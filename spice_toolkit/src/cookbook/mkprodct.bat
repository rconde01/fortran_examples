@ECHO OFF
REM 
REM   mkprodct.bat
REM
REM      Creates cookbook for the Intel Fortran Environment 64bit
REM      makenv-tag: PC-WINDOWS-64BIT-IFORT
REM
REM   Version
REM
REM      mkprodct.bat Script Version 1.0.0 13-NOV-2006 (FST)(BVS)
REM 
REM   Creates the cookbook executables for Digital Fortran
REM 
REM      Intel Fortran          - ifort
REM
REM    Set TKF77OPS to hold the compiler flags.
REM
SET TKF77OPS=/fpscomp:all /assume:byterecl /nodebug /check:bounds

REM
REM    fstspk is not longer delivered.
REM
REM ifort %TKF77OPS% /c /Tffstspk.pgm
REM ifort %TKF77OPS% fstspk.obj ..\..\lib\support.lib ..\..\lib\spicelib.lib
REM MOVE fstspk.exe ..\..\exe

ifort %TKF77OPS% /c /Tfsimple.pgm
ifort %TKF77OPS% simple.obj ..\..\lib\support.lib ..\..\lib\spicelib.lib
MOVE simple.exe ..\..\exe

ifort %TKF77OPS% /c /Tfstates.pgm 
ifort %TKF77OPS% states.obj ..\..\lib\support.lib ..\..\lib\spicelib.lib
MOVE states.exe ..\..\exe

ifort %TKF77OPS% /c /Tfsubpt.pgm
ifort %TKF77OPS% subpt.obj ..\..\lib\support.lib ..\..\lib\spicelib.lib
MOVE subpt.exe  ..\..\exe

ifort %TKF77OPS% /c /Tftictoc.pgm
ifort %TKF77OPS% tictoc.obj ..\..\lib\support.lib ..\..\lib\spicelib.lib
MOVE tictoc.exe ..\..\exe

DEL  *.obj
