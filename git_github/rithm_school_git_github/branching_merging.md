# checkout and reset

# objectives
git checkout 
git clean
git reset
--soft --mixed --hard

# introduction

# checkout
git checkout <filename>
be careful can't undo this

# clean
dealing with untracked or unmerged files 
  cant use git checkout
  must use 
  git clean -df

man git-clean
to learn more about this command

man git-clean

git clean -df

# git rm --cached
have something in working dir that we want to remove 
but accidentally add something to staging area and we want to move it back to working dir
want to move all files in staging area to woring area you can

# git rm -r --cached
want to remove files from staging and working dir
git reset --hard HEAD # this cannot be UNDONE

# undoing commits with reset
git reset --hard COMMIT_SHA
how to undo commits

git reset --soft COMMIT_SHA # moves files commited back to staging area
git reset --mixed COMMIT_SHA # vmoes files commited back to the working directory
git reset --hard COMMIT_SHA # undoes the entire commit dangerous

git log --oneline

a808698     Fourth commit  
ca0bbb4     Third commit
5ffcac5     Second commit
ac49968     First commit

git reset --soft 5ffcac5

move files had in 4th and 3rd commit back to the staging area

# your turn

# branching
objectives
brancing 
merging
an example
your turn

# visual diff tools
objectives
seeing commits and changes
using a visual tool

# merge conflicts
objectives
merging and merge conflicts

# branching merging exercises
part1
part2
