#!/bin/bash

mkdir public_html test_folder
 
touch public_html/public_html/linux_assignment/README.md

chmod 777 public_html

for filename in `find . -maxdepth 1 -type f | cut --complement -c1,2 | sort | head -4`

do
	mv "$filename" "../public_html/$filename"
	echo "Moved $filename to ../public_html/$filename"
done
cd ..

cp -R /home/webonise/abhinav/assign /home/webonise/abhinav/public_html/public_html

mv /home/webonise/abhinav/t/assign /home/webonise/abhinav/public_html/public_html

mv /home/webonise/abhinav/public_html/public_html /home/webonise/abhinav/public_html/renamed_folder

