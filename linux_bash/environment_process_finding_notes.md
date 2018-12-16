# Environment Process Finding

# resource https://www.rithmschool.com/courses/terminal

# Terminal Environment

# Objectives
describe what terminal environ is 
create and modify term environ variables 
including PATH

save environ var to config file

# what is terminals environment
list of setting sthat can be referenced by programs
see what your term environ looks like right now

## using environment variable
echo the value
must use $ as a prefix for referencing environment variables
echo $PWD

# creating environment variables
go to Projects directory

export PROJDIR=/Users/tim/Projects
notice that $ is not being used 
when define

$ only when reference
now created 

use it 

# saving environment variables
way to save them so that everytime we open a new terminal window we have those env variable set

configuration file
depending on defualt shell

.bash_profile

open .bash_profile

export PROJDIR=/Users/t_settc/Documents/calvin_personal/projects

rather than hard coding could use user name

echo $USER

env variable can be defined with other env variables

export PYTHON_PROJ=/Users/$USER/Projects/python

or could use PROJDir env var that we have already set

export PYTHON_DIR=$PROJDIR/python

catch is that PROJDIR must come before using PROJDIR

will not yet be defined when we use it in PYTHON_DIR
try to execute 


# path environment variable

PATH env var to find programs to execute
try the following in terminal

export PATH=

now try ls
does not work 
man or chgrp it does not work

do not need to specify full path of ls 
ls location is specified in the $PATH variable

ls is located in the /bin directory

which ls 

man does not work because not found in PATH

terminal window add /user/bin
/usr/sbin
/sbin to PATH

don't want to rewrite PATH

add it to $PATH

reference the PATH
using the $

separate multiple paths using the : 

export PATH=$PATH:/usr/bin:/usr/sbin:/sbin

echo $PATH

shoud see the following output

/bin:/usr/bin:/usr/sbin:/sbin


# Processes



# Objectives 
define what is process
examine processes running on machine
kill process using kill command


# what is process

# ps

# kill

# kill vs kill -9

# Finding Files and Folders

# Objectives

compare contrast find and grep
use find to search for files folders
use grep to search for patterns in a string or text
define what a regular expression is

# find

# grep

# wildcards with grep

# Intermediate Terminal Exercises

# part 1 

# part 2
