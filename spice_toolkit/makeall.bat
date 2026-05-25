rem
rem This script builds the SPICE delivery
rem for the toolkit package of the toolkit.
rem
rem The script must be executed from the
rem toolkit directory.
rem
cd src
rem
rem Creating spicelib
rem
cd spicelib
call mkprodct.bat
cd ..
rem
rem Creating support
rem
cd support
call mkprodct.bat
cd ..
rem
rem Creating brief
rem
cd brief
call mkprodct.bat
cd ..
rem
rem Creating chronos
rem
cd chronos
call mkprodct.bat
cd ..
rem
rem Creating ckbrief
rem
cd ckbrief
call mkprodct.bat
cd ..
rem
rem Creating commnt
rem
cd commnt
call mkprodct.bat
cd ..
rem
rem Creating cookbook
rem
cd cookbook
call mkprodct.bat
cd ..
rem
rem Creating dskbrief
rem
cd dskbrief
call mkprodct.bat
cd ..
rem
rem Creating dskexp
rem
cd dskexp
call mkprodct.bat
cd ..
rem
rem Creating frmdiff
rem
cd frmdiff
call mkprodct.bat
cd ..
rem
rem Creating inspekt
rem
cd inspekt
call mkprodct.bat
cd ..
rem
rem Creating mkdsk
rem
cd mkdsk
call mkprodct.bat
cd ..
rem
rem Creating mkspk
rem
cd mkspk
call mkprodct.bat
cd ..
rem
rem Creating msopck
rem
cd msopck
call mkprodct.bat
cd ..
rem
rem Creating spacit
rem
cd spacit
call mkprodct.bat
cd ..
rem
rem Creating spkdiff
rem
cd spkdiff
call mkprodct.bat
cd ..
rem
rem Creating spkmerge
rem
cd spkmerge
call mkprodct.bat
cd ..
rem
rem Creating tobin
rem
cd tobin
call mkprodct.bat
cd ..
rem
rem Creating toxfr
rem
cd toxfr
call mkprodct.bat
cd ..
rem
rem Creating version
rem
cd version
call mkprodct.bat
cd ..
cd ..
rem Toolkit Build Complete
