@echo off

#
# Markdown to PDF converter
#

if [%1]==[] goto usage

:: Convert documentation to PDF
docker run -v %cd%:/source jagregory/pandoc -f markdown -t latex %1  -o  %2
goto :eof

:usage
@echo Usage: %0 ^<Input^> ^<Output^>
exit /B 1