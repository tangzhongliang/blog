#!/bin/bash
read name
time=$(date "+20%y-%m-%d")
filename="${time}-${name}.html"
cd _post
touch ${filename}
echo "---" >> ${filename}
echo "layout: post" >> ${filename}
echo "title: ${name}" >> ${filename}
echo "---" >> ${filename}
vim $filename
