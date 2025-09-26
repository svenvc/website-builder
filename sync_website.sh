#!/bin/bash
echo Syncing website to $TARGET
scp index.html style.css $TARGET:~/html
