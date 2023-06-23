#!/bin/zsh


a=$(ls *.gif)

for f in $=a; do
    # froot is the root of the file name
    froot=${f%.*}
    qlmanage -t -s 1000 -o . $f
    mv "$f.png" "$froot.png"
done

