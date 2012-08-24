@echo off
set resultDir=..\results
if not exist %resultDir% mkdir %resultDir%

..\tools\NAnt\NAnt -buildfile:StockTickerMeetsAzure.build -l:%resultDir%\Nant-Build.log package-azure
IF ERRORLEVEL 1 GOTO Failed

echo "compilation and unit testing completed. Log file and unit-tests results are stored in %resultDir%"
GOTO End


:Failed
echo "Failed"


:End
pause
