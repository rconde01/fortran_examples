@ECHO OFF
REM
REM   mkprodct.bat
REM
REM      Creates dskbrief for the Intel Fortran Environment 64bit
REM      makenv-tag: PC-WINDOWS-64BIT-IFORT
REM
REM   Version
REM
REM      mkprodct.bat Script Version 1.0.0 13-NOV-2006 (FST)(BVS)
REM   

REM
REM   Strip the product that we're going to build from the command line.
REM
SET PRODUCT=dskbrief

REM
REM   Set the F77 variable to contain the name of the compiler that will
REM   be used to build the toolkit.
REM
REM      Digital Fortran        - DF
REM      Microsoft Powerstation - FL32
REM      Intel Fortran          - IFORT
REM
SET F77=ifort

REM
REM   Set the TKF77OPS environment variable.
REM
REM      /fpscomp:all     - Enable all MS Powerstation compatibility
REM      /assume:byterecl - Use byte-sized record lengths
REM      /nodebug         - Production level code, no debug info.
REM      /check:bounds    - Enable array bounds checking
REM
SET TKF77OPS=/fpscomp:all /assume:byterecl /nodebug /check:bounds

REM
REM   Set the LD environment variable to define the linker we will use
REM   to link.
REM
REM      Digital Fortran         - LINK
REM      Microsoft Powerstation  - LINK32
REM
REM
SET LD=link

REM
REM   Set the LDOPS environment variable to define the options we will
REM   pass to the linker.
REM
SET LDOPS=-LIB /OUT:%PRODUCT%.lib

REM
REM   Now determine whether we're to build a library or executable.     
REM
IF EXIST *.pgm GOTO PGMBRNCH
GOTO LIB

REM
REM   The following BATCH instructions determine whether the build
REM   of the executable requires a local library.
REM
:PGMBRNCH

IF EXIST *.for GOTO PGMLIB
GOTO PGMNOLIB


REM
REM   The following BATCH instructions build a library.
REM
:LIB

FOR %%F IN (*.for) DO %F77% %TKF77OPS% /c %%F
DIR /B *.obj >> objects.lst
%LD% %LDOPS% @objects.lst
MOVE %PRODUCT%.lib ..\..\lib
DEL objects.lst
DEL *.obj
GOTO END


REM
REM   The following BATCH instructions build an executable that does
REM   not require a local supporting object library.
REM
:PGMNOLIB

%F77% %TKF77OPS% /c /Tf%PRODUCT%.pgm
%F77% %TKF77OPS% %PRODUCT%.obj   ..\..\lib\support.lib ..\..\lib\spicelib.lib
MOVE %PRODUCT%.exe  ..\..\exe
DEL *.obj
GOTO END

REM
REM   The following BATCH instructions build an executable that does
REM   require a local supporting object library.
REM
:PGMLIB

FOR %%F IN (*.for) DO %F77% %TKF77OPS% /c %%F
DIR /B *.obj > temp.lst
%LD% %LDOPS% @temp.lst
%F77% %TKF77OPS% /c /Tf%PRODUCT%.pgm
%F77% %TKF77OPS% %PRODUCT%.obj %PRODUCT%.lib   ..\..\lib\support.lib ..\..\lib\spicelib.lib
MOVE %PRODUCT%.exe  ..\..\exe
DEL *.obj
DEL %PRODUCT%.lib
DEL temp.lst
GOTO END

:END

ECHO %PRODUCT% build completed.
