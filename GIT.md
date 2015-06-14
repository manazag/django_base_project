GIT TIPS
========

## initialize the repository in current folder:
    git init .

## add all the files of the current directory into the staging area (except the ones in the .gitignore file):
    git add .

## check the files added under git control:
    git status

## create first commit
    git commit -m 'project started'

## set a remote repository

create a new repository

### bitbucket.org
    git remote add origin https://user_name@bitbucket.org/user_name/repository_name.git

### github.com
    git remote add origin https://github.com/user_name/repository_name.git

## upload project to remote repository
    git push -u origin master
