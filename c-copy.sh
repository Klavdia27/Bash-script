#!/bin/bash
ext=$1
otkuda=$2
kuda=$3

if [ $# -eq 3 ] ;
    then
        files=$(find $2 -type f -regex "^.*$ext")
        for f in $files
            do 
                size=$(du -h $f | cut -f1)
                cp -r -v $f ./$3  ;                
                echo "(size:" $size ")"
                 
        done
        
    else 
        if [ $# -eq 2 ] ;
            then
                
                cp -r -v ./$1/. ./$2
            else 
                echo "Error: enter three parameters: ext - file extension, 
                srcDir - directory from which to copy, 
                outDir - directory to which to copy
                example $ sh c-copy.sh ext srcDir outDir"
        fi
fi
echo 
sizetotal=$(du -h ./kuda | cut -f1)
echo "Total size: "  $sizetotal
echo "Done."
