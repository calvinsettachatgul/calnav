# stashing
# objectives
temp store state of a working dir
understand value of git tash when clean working dir is neeeded

# stashing
git won't let the pull or merge go through
  with changes on the branch

unless your working dir is clean
what to do if you're working dir isn't clean but aren't ready to commit yet

stashing can help
temp way of remembering changes without making official commit

useful commands
git stash # stash your commits
git stash list
git statsh apply move the latest stashed change back into working dir but keep it on the list
git stash pop move latest stashed change back into working dir and remove it from list
git stash show show the latest stash
git stash show stash@{number} show a specific stashed change

git staths pop/apply stash@{number} to retrieve a spec stashed change

stashing useful when you are not ready to commit something but need a clean work dir
learn more about git stash here and here

# rebasing
# objectives
rebasing and merging contrast
use interactive mode to edit reword revert squash commits

# pre-reading
tutorial on atlassian
what does it mean when we say merging can 'pollute' our commit history?
rebasing solve the problem of not needing an extra commit
what is the golden rule of rebasing why is knowing it so important?

# rebasing interactive mode
key diff between rebase and merge
how can rebase in interactive mode give us complete control over the entire commit history

rebase with github

# reverting
objectives
compare and contrast
git revert
git reset
# revert

undoes a commit but unlike reset which removes the commit from the commit history
revert appends a new commit to the resulting content this prevents Git from losing history

important for integrity of your revision hisotry 
and for reliable collaboration
git reset is highly dangerous because alter the history of commits which makes it diffficutl to maintain consistent history of commits with other devs

1 work on a file add commit your changes
2 work on few other things and make more commits
3 realize 3 4 commits ago did somethign that you would like to undo how can you do this?


git reset remove all the commits after the one you would like to change

git revert to the rescue

# git reflog
make a change like undoing commit using git reset
have reverted or squashed and you want to undo that change 

git reflog see previous changes you have made with unique SHAs 
git reset --hard SHA to go back to previous state

see this in action try rebasing example above to squase last 2 commits into one 
look at history you get when you type git reflog

# advanced git exercises
part1
part2
