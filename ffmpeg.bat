@echo off
::
:: ffmpeg
:: 

:: Use ffmpeg -i "source/file" out.mp3
docker run   -it --rm -v %cd%:/source alfg/ffmpeg ffmpeg %*