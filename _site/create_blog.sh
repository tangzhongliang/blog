#!/bin/bash
IFS=''
read name
time=$(date "+20%y-%m-%d")
filename="${time}-${name}.html"
cd _posts
touch ${filename}
echo "---" >> "${filename}"
echo "layout: post" >> "${filename}"
echo "title: ${name}" >> "${filename}"
echo "---" >> "${filename}"
echo "<pre>" >> "${filename}"
echo "</pre>" >> "${filename}"
vim $filename
cd ..
