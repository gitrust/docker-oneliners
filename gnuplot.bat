@echo off

#
# Gnuplot call
#

if [%1]==[] goto usage

:: Call gnuplot
docker run --rm -v %cd%:/tmp -w /tmp pavlov99/gnuplot gnuplot %1
goto :eof

:usage
@echo Usage: %0 ^<Input^>
exit /B 1