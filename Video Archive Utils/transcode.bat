@ECHO OFF
setlocal enabledelayedexpansion

set folder="Transcoded"
echo "folder: %folder%"
if not exist "%folder%" mkdir "%folder%"

for %%f in (*.avi) do (
  set /p val=<%%f
  echo "fullname: %%f"
  echo "name: %%~nf"
  ffmpeg -i "%%f" -pix_fmt yuv420p -f mp4 -vcodec libx264 -preset fast -profile:v main -acodec aac "%folder%\%%~nf.mp4"

)
::for /r %%i in (*) do echo %%i

::ffmpeg -i "2013-02-08 13-45-00.648933 MOV000107.avi" -pix_fmt yuv420p -f mp4 -vcodec libx264 -preset fast -profile:v main -acodec aac "2013-02-08 13-45-00.648933 MOV000107.mp4"
::ffmpeg -i "2013-12-01 18-37-15.022893 MOV000122.avi" -pix_fmt yuv480p -f mp4 -vcodec libx264 -preset fast -profile:v main -acodec aac example.mp4
::ffmpeg -i "2013-12-01 18-37-15.022893 MOV000122.avi" "2013-12-01 18-37-15.022893 MOV000122.mkv"
::ffmpeg -i "2013-02-08 13-45-00.648933 MOV000107.avi" "2013-02-08 13-45-00.648933 MOV000107.mp4"