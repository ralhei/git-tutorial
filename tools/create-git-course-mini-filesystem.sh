#! /bin/sh

# This helper script creates a file system history
# matching the the graphics in checkins-over-time-2.png
# in the 'Images'-folder.

mkdir git-course-mini-filesystem
cd git-course-mini-filesystem
git init
git config user.name 'Ralph Heinkel'
git config user.email rh@ralph-heinkel.com

echo A > A
echo B > B
echo C > C
git add A B C
git commit -m 'Version 1'
sleep 1

echo A1 > A
echo C1 > C
git add A C
git commit -m 'Version 2'
sleep 1

echo C2 > C
git add C
git commit -m 'Version 3'
sleep 1

echo A2 > A
echo B1 > B
git add A B
git commit -m 'Version 4'
sleep 1

echo B2 > B
echo C3 > C
git add B C
git commit -m 'Version 5'

git log --name-status

