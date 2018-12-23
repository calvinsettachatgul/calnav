# https://www.atlassian.com/git/tutorials/merging-vs-rebasing

# conceptual overview
voodoo?
life easier handle with care

compare
identify potential opportunities to incorporate rebasing into typical git workflow

conceptual overview

git rebase solves the same problem as git merge
integrate changes form one branch into another

do it in different ways

updates to master by another team member
results in a forked history

2 options merging and rebasing

# merge option

git checkout feature 
git merge master

oneliner
git merge feature maser 
  # creates a new merge commit 
  # ties together the histories of both branches giving a strucuture that looks like
       c2a c3a c4a c5a
c1 c2  c3  c4

merge commit from c4 to c5a
c5a is the merge commit

nondestructive operation 
existing branches are not changed in anyway 
avoids pitfalls of rebasing

other hand feature branch will have extraneous merge commit every time you need to incorporate upstream changes

this can pollute feature branches history quite a bit

mitigate this issue with advanced log options can make it hard for other devs to understand the history of the project

# rebase option

alternative to merging 

feature branch onto master branch using the following command

git checkout feature
git rebase master

moves entire feature branch to begin on the tip of master branch

effectively incorporating all the new commits in master

but instead of using merge commit rebasing re-writes the proj history by creating brand new commits for each commit in original branch

eliminates unnecessary merge commits required by git merge
linar project history

folow tip of feature all the way to the beginning of the project without any forks

makes navigate easy git log
git bisect gitk

2 tradeoffs
safety and traceability

golden rule of rebasing
re-writing project history can be potentially catastrophic for your collaboration workflow
rebasing loses the context provided by a merge commit
cant see when upstream changes were incorporated into the feature

# interactive rebasing
opp to alter commits as they are moved to a new branch

this is even more powerful than automated rebase
offers complete control over branch's commit history
used to clean messy history before merging a feature brnach into master

pass i option to git rebase

git checkout feature 
git rebase -i master

open up text editor listing all commits that are about to be moved

change pick command and or re-ordering entries

can make the branch's history look like whatever you want 

pick sha1 messsage for commit 1
pick sha2 messsage for commit 2
pick sha3 messsage for commit 3

example 2nd commit fixes small problem in 1st commit condense them into single commit

with the fixup command

pick sha1 messsage for commit 1
fixup sha2 messsage for commit 2
pick sha3 messsage for commit 3

# golden rule or rebasing

when not to do rebasing

never use it on public branches

if you rebased master onto your feature branch?
ask is anyone else looking at this branch?

if yes then think of non-destructive way to make changes

use the git revert command

otherwise re-write history as much as you like

# force-pushing

push rebased master branch back to a remote repo git will prevent

confflicts with remote master branch

force the push to go through  by passing --force flag

git push --force
overwirtes the remote master branch to match the rebases one from your repository
makes things confusing for the rest of your team

be careful to use this command only when you know exactly what you are doing

performed local cleanup after you've pushed a private feature branch to a remote repo

oops I didn't really want to push that original version of the feature branch

take the current one instead


# workflow walk through

as much or as little as team is comfortable with

benefts of rebasign in workflow

# local cleanup

# incorporating upstream changes into a feature branch

merging the changes

rebasing the  changes

git pull --rebase

# reviewing a feature with a pull request
use pull requests as part of code review process 
need to avoid using 
git rebase after creating the pull request

as soon as make pr other devs looking at commits means that it's a public branch

rewriting history will make it impossible for git and your teamates to track any folow-up commits added to feature

use git merge instead of git rebase

good idea to clean up your code with interactive rebase before submitting your pr

# integrating an approved feature
approved by team 
option of rebasing
feature onto tip of master branch or using git merge to integrate feature into main code base

# summary
clean linear history free of unnecessary merge commits then you should reach for git rebase

preserver the complete histroy of you project and avoid risk of rewriting public commits git merge

either option is valid
option of leveraging the benenfits of git rebase

