#!/bin/bash
read name
time=$(date "+20%y-%m-%d")
filename="${time}-${name}.html"
cd _posts
touch ${filename}
echo "---" >> "${filename}"
echo "layout: post" >> "${filename}"
echo "title: ${name}" >> "${filename}"
echo "---" >> "${filename}"
echo "<p>" >> "${filename}"
echo "</p>" >> "${filename}"
vim $filename
cd ..
