# Convert HEIC photos (photos done via iPhone) to jpg
# Takes all heic files from directory and convert them to jpg with the same name
# Scripts use software called magick.exe. It can be downloaded here: https://imagemagick.org/script/convert.php

Get-ChildItem -Filter "*.heic" | ForEach-Object { magick.exe $_ "$($_.BaseName).jpg" }