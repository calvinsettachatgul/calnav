# Advanced Terminal Commands

# resource https://www.rithmschool.com/courses/terminal

# SSH
# objectives
set up ec2 instance on amazon
use ssh command to connect to remote server
use scp command to copy files to a remote server
# ssh
secure shell

# setting up ec2
aws account 
create iam user
create key pair
create vpc
create security group
launch instance
connect to instance

ssh -i ./me-key-pair-uswest2.pem ec2@YOUR_PUBLIC_DNS

# securely copying files to ec2 instance with scp
scp command

scp -i PATH_TO_PEM_FILE <file to move> username@PUBLIC_DNS


# terminate instance

# cut sed awk Xargs
understand cut command
understand sed
understand awk 
understand xargs

# objectives
# cut
# sed
# awk
# xargs

# shell scripting and vim
# objectives
write simple shell script with args
use vi to open and edit files
# shell scripting
echo "Hello World"
# your turn
# more complex scripts
# vim

# advanced terminal exercises


