#!/bin/sh

# Save working directory to a file
pwd > $1/pwd_loc

echo "\n========"
echo $1
cd $1
echo "---"

# Exercise 0
echo "\n============"
echo "=== ex00 ==="
echo "============"
cat ex00/z
echo "---"

# Exercise 1
echo "\n============"
echo "=== ex01 ==="
echo "============"
cd ex01	
tar -xf testShell00.tar
ls -l
rm -f testShell00
cd ..
echo "---"

# Exercise 2
echo "\n============"
echo "=== ex02 ==="
echo "============"
cd ex02
tar -xf exo2.tar
ls -l
rm -rf test0 test2
rm -f test1 test3 test4 test5 test6
cd ..
echo "---"

# Exercise 3
echo "\n============"
echo "=== ex03 ==="
echo "============"
cd ex03
echo "--- klist ---"
klist
echo "--- klist.txt ---"
cat klist.txt
cd ..
echo "---"

# Exercise 4
echo "\n============"
echo "=== ex04 ==="
echo "============"
cd ex04
echo "--- midLS ---"
cat midLS
touch .hidden-file file
mkdir folder
touch folder/not-in-current-directory
bash midLS > result
echo 'result, midLS, folder/, file,' > expectation
echo "--- diff with result ---"
diff expectation result
rm -rf folder
rm .hidden-file file expectation result
cd ..
echo "---"

# Exercise 5
echo "\n============"
echo "=== ex05 ==="
echo "============"
cd ex05
echo "--- contents git_commit.sh ---"
cat git_commit.sh
echo "--- run git_commit.sh ---"
bash git_commit.sh | cat -e
cd ..
echo "---"

# Exercise 6
echo "\n============"
echo "=== ex06 ==="
echo "============"
cd ex06
echo "--- contents git_ignore.sh ---"
cat git_ignore.sh
echo './ex06/ignore-this' >> ../.gitignore
touch ignore-this

bash git_ignore.sh | cat -e
rm ignore-this
git stash
cd ..
echo "---"

# Exercise 7
echo "\n============"
echo "=== ex07 ==="
echo "============"
export PWD=$(cat pwd_loc)
diff $PWD/a ex07/b > result
echo "--- diff result with sw.diff ---"
diff result $PWD/sw.diff
rm result
echo "---"

# Exercise 8
echo "\n============"
echo "=== ex08 ==="
echo "============"
cd ex08
echo "--- clean ---"
cat clean
touch \#file\# \#file ~file file~ .file~
mkdir \#folder\#
touch \#folder\#/\#file\# \#folder\#/file~
bash clean > result
# TODO: add expectation
echo "--- result ---"
cat result
rm -rf \#folder\#
echo "--- #file# file~ .file~ should have been deleted already ---"
rm result \#file\# \#file ~file file~ .file~
cd ..
echo "---"

# Exercise 9
echo "\n============"
echo "=== ex09 ==="
echo "============"
export PWD=$(cat pwd_loc)
file -m ex09/ft_magic $PWD/42file
echo "---"

