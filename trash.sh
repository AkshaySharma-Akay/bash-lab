#! /bin/bash
#We write a program that copies all files into a directory, and then deletes the directory along with its contents.
mkdir trash
cp * trash
rm -rf trash
mkdir trash