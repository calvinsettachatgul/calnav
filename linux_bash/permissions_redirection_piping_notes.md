# permissions redirection piping
#https://www.rithmschool.com/courses/terminal/terminal-permissions-and-links
# permissions links

determine permissions set for a file or dir

manage and change permissions using chmod

manage and change users and groups chown and chgrp
explain root 
root and sudo
# root
# sudo
# chown
# chgrp

create links using ln command

difference between hard and symbolic link
# hard link
# symbolic link

# Introduction
moving or installing get permission denied error

# Users and Groups

ls -lah
user and group column

there is a staff group
permissions

permissions of .bashrc

3 types of operations
r read
w write
x execute

owner group other
user group other 

for each of these there are read write exec permissions

# changing permissions
0 none
1 execute only
2 write only
3 write exec
4 read only
5 read exec
6 read write
7 read write exec


chmod 770 somefile.txt

using symbolic notation

chmod ug+rwx, o-rwx hi.txt

adding permissions to a folder use the -R flag

chmod -R 755 some_folder

# Executable files and folders
what does it mean for a file of folder

for a folder means you can cd into it

mkdir test_folder
cd test_folder 
cd .. 
chmod 666 test_folder 
cd test_folder see an error saying permission denied

for a file means that it can be run from the shell as if it were a gprogram

echo ls > test.sh
echo pwd >> test.sh
echo pushd . >> test.sh
echo "cd ~" >> test.sh
echo "pwd" >> test.sh
echo popd >> test.sh
cat test.sh

test.sh

difference between > and >> operators

chmod 755 test.sh
made first executable script

# chown and chgrp
ls -lah 

-rwxr-xr-x 1 eschoppik staff 67B Aug 29 2014 .bashrc

1 refers to the number of files always 1 for files
staff is the group
67B is the size of the file
date is the last day the file was modified
.bashrc is the name of the file

want a diff group to own the file?

use the following commands

chown anotheruser:anothergroup .bashrc

just change the group

chgrp anothergrp .zshrc

drwxr-xr-x 6 root admin 204B Oct 20 2015 ..

directory with d

what is root?

# root user and sudo
root user is a special user on the computer with the power to do anyhting

change permissions on file delete anything
root as owner want to make a change you have to use the sudo command

sudo gives you powers of the root user 
for just one command and will ask for password in order to perform the command

try it out
touch somefile.txt

make the root the owner

sudo chown root somefile.txt

# Links

there are 2 types of links

structure looks like this

ln path_to-link name_of_link

# Hard Link

create learn.txt 
open our learn.txt

creat a link to this file 
first_link

ln learn.txt first_link

cat first_link
should see output "learning about links"

move our learn.txt still have a link to it through first_link

decide to delete learn.txt 

rm learn.txt 
 
cat first_link see that we have our link

shouldn't the link be broken if a file is removed

hard link is a direct copy of a file 
if the file is removed the link still exists

# Symbolic Link

usually want ref to some file and not direct copy

create symbolic link use the -s flag

create a file learn_again.txt
create a symbolic link 
ln -s learn_again.txt first_sym_link
if we cat first_sym_link no errors 

if we move or delete learn_again.txt 
then first_sym_link will be broken


# redirection

# resource https://www.rithmschool.com/courses/terminal/terminal-redirection

# Objectives
what is redirection

explain > >> and <

using redirection in the terminal

# Redirection

take the output from command send it somewhere else

call this redirection

>> or > 

simple example echo

displaying text

more useful to take the text and redirect to file

echo Hello World > hello.txt

cat hello.txt

then echo Hello Universe > hello.txt

overwrite the file with the old text

append some text at the end of a file rather than overwriting then use the >> 

put small pieces of text in a file

# Redirection with Input

redirection with standard ouput take something and output to something else

use redirection with input < arrow 

sort which sorts a file aphabetically

names.txt

with the following names 

Bob
Tom
Jim 
Amy

sort names.txt

what if we want to take the contents of names.txt
redirect that to the sort command 

then send that output to sorted.txt

redirection will look like this

sort < names.txt > sorted.txt

created a file called sorted.txt with names sorted


using the sort command only but what if wanted to use other commands together
connect these commands together throught pipes

#
# Piping

# resource https://www.rithmschool.com/courses/terminal/terminal-piping 

# objectives
head tail sort uniq wc grep commands
what is piping 
use cases piping
use piping to work better in terminal

# piping

chain even more commands together

couple of commands into one

single line able to sort and output to new file

learn/review couple of terminal commands

head  display first lines of a file with the -n flag specify the number of lines
tail  displa last lines of file -n flag specify number of lines
sort sort lines of a text file
uniq removes duplicated lines must be sorted first though
wc word line character and byte count

2 files with 3 lines each

# first.txt
first 
second 
third

# second.txt
fourth
fifth
sixth

concatenate these files and then find the word count?
cat first.txt second.txt | sort o

cat first.txt second.txt | sort | head -n 2

take a look at this command figure out what it is doing

cat first.txt second.txt | sort | tail -n 3 | head -n 1

concat first 2 files
sort the result
find the last 3 lines
fird the first line of those 3 lines

# grep

another useful command powerful

quite powerful when piped with cat

try it 
cat first.txt | grep First
what do you see should see the First output on the terminal 

grep search the file for text First

grep doesn't find a match then won't output anything

finds matches then print them all 

try these commands out see what grep returns you 

cat first.txt second.txt | grep Nope
cat first.txt second.txt | grep th

look at another example

# petnames.txt

Lassie
Moxie
Whiskey
Fido
Lassie
Moxie

there are duplicates 

uniq petnames we get the following

Lassie
Moxie
Whiskey
Fido
Lassie
Moxie

look at definition of uniq command works see data must be sorted

sort on petnames.txt then attach the uniq command

sort petnames.txt | uniq

First
Lassie
Moxie
Whiskey

redirect to some file 

sort petnames.txt | uniq > petnames_sorted.txt 

cat petnames_sorted.txt should see four uniq pet names


