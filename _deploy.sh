#!/bin/bash
#echo $ftp_passwd | glynn
jekyll build
rsync -avz --progress --rsh="sshpass -e ssh -o StrictHostKeyChecking=no -l netimpact" _site/ netimpact@iit.edu:~/htdocs
