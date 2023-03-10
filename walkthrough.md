
***

<p align="center">
🎉 Walkthrough Lab 2, 3, 4 and 5! 🎉
</p>
<p align="center">
كل اللابات و حلها في مكان واحد
</p>

***

<sub>Check out The [CheatSheet](https://github.com/CS360-OS-Practical/CS360-Practical-/blob/1048b05cc0a23599b1e2447eca4475cf176a163e/CS360CheatSheet.sh)</sub>

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

Lab 3
=================
1) create folder Lab3 under home directory, create [jeddah, ryiadh and dammam] directories under lab3. create [makkah and medina] under jeddah directory. create [al-kharj and al-daho] under ryiadh directory. create [jubail and qatif] under dammam directory.
```sh
mkdir lab3
cd lab3 
mkdir jeddah ryiadh dammam
cd jeddah 
mkdir makkah medina
cd ../ryiadh
mkdir al-kharj al-daho
cd ../dammam 
mkdir jubail qatif
```
2) go to jubail and create 3 files using cat named as [abubakr.txt, umar.txt, ali.txt] containg random text and verfiy using ls
```sh
cd ~/Lab3/dammam/jubail
```
```sh
cat > abubakr.txt
random text 
ctrl+d if you finish typing
```
```sh
cat > umar.txt
random text 
ctrl+d if you finish typing
```
```sh
cat > ali.txt
random text 
ctrl+d if you finish typing
```
```sh
ls
```
3) copy abubakr.txt to makkah directory and verify
```sh
cp abubakr.txt ~/Lab3/jeddah/makkah
ls ~/Lab3/jeddah/makkah
```
4) copy all files from jubail to al-kharj directory and verify
```sh
cp *.txt ~/Lab3/ryiadh/al-kharj
ls ~/Lab3/ryiadh/al-kharj
```
5) move to al-kharj directroy then copy and rename all files to medina direcroy [*_new.txt]
```sh
cd ~/Lab3/ryiadh/al-kharj
cp abubakr.txt ~/Lab3/jeddah/medina/abubakr_new.txt
cp umar.txt ~/Lab3/jeddah/medina/umar_new.txt
cp ali.txt ~/Lab3/jeddah/medina/ali_new.txt
```
6) go to home directroy then jubail  and delete all files that start with a
```sh
cd ~
cd ~/Lab3/dammam/jubail
rm a*.txt
```
7) go to jubail parent and delete jubail directroy 
``` sh
rm -r jubail
```
8) go to medina directroy and move all files that end with new using single mv command to al-daho and check with ls with out moving from medina directroy 
```sh
cd ~/Lab3/jeddah/medina 
mv *new.txt ~/Lab3/ryiadh/al-daho
ls ~/Lab3/ryiadh/al-daho
```
9) go to al-daho and move ali_new.txt to makkah directory
```sh
cd ~/Lab3/ryiadh/al-daho
mv ali_new.txt ~/Lab3/jeddah/makkah
```
10) delete files that end with new in al-daho directroy 
```sh
rm *new.txt
```
11) delete al-daho and medina directroy 
```sh
cd ~/Lab3/ryiadh
rm -d al-daho
cd ~/Lab3/jeddah 
rm -d medina
```

 Lab 4
=================
### 1-create folder Lab4 under home then create 3 folders [ITEfolder1, ITEfolder2, ITEfolder3] under Lab4 and use ls to verify
```sh
mkdir Lab4
cd Lab4
mkdir ITEfolder1 ITEfolder2 ITEfolder3
ls -l
```
### 2-create text files and use redirection operator
a) go to ITEfolder1 and make files called test2.txt using cat and type 10 fruit name
```sh
cd ITEfolder1
cat > test2.txt
type fruit name
```
b)create file called test1.txt using cat and type 15 country names
```sh
cat > test1.txt
type country name
```
c) copy both test1 and test2 to ITEfolder2 and check with ls without moving to ITEfolder2
```sh
cp *.txt ../ITEfolder2 
ls ../ITEfolder2
```
b) append the content of test1 into test2 and check the content of test2
```sh
cat test1.txt >> test2.txt
cat test2.txt
```
c) show the content of test2.txt as pages
```sh
cat test2.txt | more
q to exit
```
d) append to test1 [let you add more text to test1]
```sh
cat >> test1.txt
```
e) append [merge] the content of test1 and test2 again 
```sh
cat test1.txt >> test2.txt
```
### 3-special output command
a) show the content one page at time using less
```sh
less test2.txt
```
b) show the first ten line then show the first tbree line of test2.txt
```sh
head test2.txt
head -3 test2.txt
```
c) show the last ten line then show the last fifteen line of test2.txt
```sh
tail test2.txt
tail -15 test2.txt
```
d) show the word count of test2.txt
```sh
wc test2.txt
```
e) show the the number of[lines, words, bytes, char] in test2 respectively
```sh
wc -l test2.txt
wc -w test2.txt
wc -c test2.txt
wc -m test2.txt
```
f) show the length of longest line in test2
```sh
wc -L test2.txt
```
### 4-input redirection 
a) sort 4 animals names using sort
```sh
sort
type 4 animals 
ctrl+d to exit
```
b) sort the content of test1 
```sh
sort < test1.txt
```
c) sort the content of test1 and save it to new file and check the content using cat
```sh
sort < test1.txt > test1_sort.txt
cat test1_sort.txt
```
### 5- pipes
a) sort who is on the system 
```sh
//this create a temporary file that you have to delete later
who > names.txt
sort < names.txt
or
//this dont create a temporary file that you have to delete later
who | sort
```
b) sort the list of files in you current directory 
```sh
ls -l | sort
```
c)display the number of lines in test1_sort.txt
```sh
cat test1_sort.txt | wc -l
```
d) sort test1.txt then output the first ten lines
```sh 
sort < test1.txt | head
```
### 6-wild cards
a) list all files that start with test
```sh
ls -l test* 
```
b) list all files that end with .txt
```sh
ls -l *.txt
```
c) list all files that start with test then only one character 
```sh
ls -l test?.txt
check the cheatsheet for more info on [?] wild card
```
 Lab 5
=================
[![file-permissions.png](https://i.postimg.cc/zBVWfQtq/file-permissions.png)](https://postimg.cc/gXbrSgb7)
