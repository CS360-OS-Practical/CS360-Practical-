##############################################################################
# Command INFO
##############################################################################


man <command>           		    # shows the manual for specified command [press q to exit]


##############################################################################
# Command INFO
##############################################################################


# Path describes the location from the root directory.

/home/username/example.txt	    	# Absolute path example
~/example.txt				        # Absolute path but using home/user shorthand  [~]



# Relative path describes the location of a file relative to the current (working) directory

example.txt				             # Relative path [means in the current working directory theres example.txt]
../example.txt				         # Relative path but using parent shorthand [means the parent of the current directory have example.txt]


##############################################################################
# DIRECTORY COMMANDS
##############################################################################


mkdir <dirname>               		 # Makes a new directory
mv <dir1> <dir2>              		 # Rename a directory from <dir1> to <dir2>
cd                            		 # Changes to home
cd ..                         		 # Changes to the parent directory
cd <dirname>                  		 # Changes directory
cp -r <dir1> <dir2>           		 # Copy <dir1> into <dir2> including sub-directories
pwd                         		 # Tells you where you currently are
cd ~                          		 # Changes to home.
cd -                         		 # Changes to previous working directory


##############################################################################
# FILE COMMANDS
##############################################################################


ls                          		 # Lists your files in current directory, ls <dir> to print files in a specific directory
ls -l                       		 # Lists your files in 'long format', which contains the exact size of the file, who owns the file and who has the right to look at it, and when it was last modified
echo [message] > filename	  	     # Redirect the message from the screen to a filename. 
cat <filename>               		 # Displays file raw content (will not be interpreted)
cat  > <filename>               	 # Let you write your input and then redirect it to the file
cat  >> <filename>               	 # Let you edit a file, add more content to the file
cat filename1 >> filename2   		 # Merge; append two files texts together [content of filenmae1 will be added to the bottom of filename2]
mv <filename1> <dest>        		 # Moves a file to destination, behavior will change based on 'dest' type (dir: file is placed into dir; file: file will replace dest (tip: useful for renaming))
cp <filename1> <dest>        		 # Copies a file
rm <filename>                		 # Removes a file
rm -d <dirname>                		 # Removes an empty directory
rm -r <dirname>                		 # Removes  non-empty directory
cat filename.txt | more 		     # Takes the file contoent and use it as input to more which let you see the output as pages
less filename				         # Let you see the output as pages
head filename                        # Print the first ten lines
head -3 filename                     # Print the first 3 lines
tail filename                        # Print the last ten lines
taile -3 filename                    # Print the last 3 lines
wc filename                          # Print [numberOfLines, numberOfWords, numberOfBytes = char]
wc [-l, -w, -c, -m, -L]              # Print [-m = numberOfChar, -L = length of longest line]
sort < filename                      # Print input comes from file
sort < filename1 > filename2         # Sort file name1 then redirect it to filename2
who                                  # Shows who currently logged in the system
who | sort                           # Show a sorted who Lists
ls -l | sort                         # list all the files and folders in your current directory and get them sorted
cat filename | wc -l                 # number of lines 
sort < filename | head               # Print the first 10 sorted lines
chmod -options <filename>            # Lets you change the read, write, and execute permissions on your files (more infos: SUID, GUID)
history                              # Shows command line history
history  >> filename                 # Redirect command line history  to filename
nano filename                        # open filename with linux command line editor
grep <pattern> <filenames>           # looks for the string in the files
grep -i <pattern> <filenames>        # looks for the string in the files but ignore case 

##############################################################################
# INPUT/OUTPUT REDIRECTORS
##############################################################################


cmd1|cmd2 				            # pipe; takes standard output of cmd1 as standard input to cmd2
< file     			            	# takes standard input from file
> file     				            # directs standard output to file
>> file    				            # directs standard output to file; append to file if it already exists


##############################################################################
# Wild cards
##############################################################################


*.txt                               # all the files that end with txt
a*.txt                              # all the files that start with a and end with txt
?.txt                               # start with only one single character and end with .txt

