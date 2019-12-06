@echo off

if [%1]==[] goto usage

:: Call gnuplot
set GVIZ_DKR_IMAGE=efcasado/graphviz

set GVIZ_DKR_RUN_OPTS=--rm -it -v %cd%:/code -w /code
docker run %GVIZ_DKR_RUN_OPTS%  %GVIZ_DKR_IMAGE%  dot -Nfontname=Arial -Tpng %1 -o graph.png 

goto :eof

:usage
@echo Usage: %0 ^<Input^>
exit /B 1