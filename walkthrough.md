
***

<p align="center">
🎉 Walkthrough Lab 2, 3, 4 and 5! 🎉
</p>
<p align="center">
كل اللابات و حلها في مكان واحد
</p>

***

<sub>Check out The cheatsheet [CheatSheet](https://github.com/CS360-OS-Practical/CS360-Practical-/blob/1048b05cc0a23599b1e2447eca4475cf176a163e/CS360CheatSheet.sh)</sub>

Lab 2
=================
### 1-Accesses the command line
```sh
Ctrl+Alt+T
or 
Click the consol icon
```
### 2-Display the [man] pages
```sh
man [any command]
```
Example:
```sh 
man man
```


### 3-Check, Create and change directories
a) check currecnt working directory
```sh
pwd 
```

b) create directories ITEfolder1, ITEfolder2 and ITEfolder3
```sh
mkdir ITEfolder1
```
or all at once
```sh
mkdir ITEfolder2  ITEfolder3
```

c) Verify with [ls]
```sh
ls
```

d) move to ITEfolder3 
```sh
cd ITEfolder3
```

e) inside ITEfolder3 create ITEfolder4 directory
```sh
mkdir ITEfolder4
```

f) go to parrent directory 
```sh
cd ..
```

g) go to home directroy 
```sh 
cd ~

or

cd
```

### 4-Create text files
a) go to ITEfolder1
```sh
cd ~/ITEfolder1
```

b) use echo to create doc1.txt, doc2.txt, file1.txt and file2.txt
```sh
echo this is doc1.txt > doc1.txt
echo this is doc2.txt > doc2.txt
echo this is file1.txt > file1.txt
echo this is file2.txt > file2.txt
```
c) use ls to verify 
```sh 
ls -l
```
d) use ls to show files start with .
```sh
ls -a
```
e) use cat to view the content of doc2.txt 
```sh
cat doc2.txt
```

### 5-copy, delete and move files 
a) move doc2.txt to ITEfolder2
```sh
mv doc2.txt ~/ITEfolder2
```
b) verify using ls
```sh
ls ~/ITEfolder2
```
c) move to ITEfolder2 and create a copy of doc2.txt and check the content of the copy using cat command
```sh
cd ../ITEfolder2
cp doc2.txt doc2_copy.txt 
cat doc2_copy.txt
```
d) move doc2_copy.txt to ITEfolder1 
```sh
mv doc2_copy.txt ~/ITEfolder1
```
e) copy doc2.txt to ITEfolder1 and rename it 
```sh
cp doc2.txt ~/ITEfolder/doc2_newName.txt
```
f) go to to ITEfolder1 and move file1.txt and file2.txt  to ITEfolder3
```sh
mv file*.txt ~/ITEfolder3
```
g) delete doc2_copy.txt from ITEfolder1
```sh
rm doc2_copy.txt
```
### 6-delete direcotry 
a) go to ITEfolder3 and delete ITEfolder4 from it
since its empy folder use -d
```sh
rm -d /ITEfolder4
```
b)go to home and delete ITEfolder3
since its not empy folder use -r
```sh
rm -r ITEfolder3
```
