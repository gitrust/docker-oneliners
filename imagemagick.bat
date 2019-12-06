@echo off

if [%1]==[] goto usage

:: -colorspace gray -sketch 0x20+120
:: -segment 1000x0.1
:: 
docker run -it --rm -v "%cd%:/images" herzog31/imagemagick convert %*
goto :eof

:usage
@echo Usage: %0 ^<Input^>
exit /B 1