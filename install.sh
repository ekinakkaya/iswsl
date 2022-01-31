#!/bin/sh


# chmod
chmod 755 ./iswsl

# move to /usr/local/bin
sudo mv ./iswsl /usr/local/bin

# remove files
cd ..
rm -r iswsl


