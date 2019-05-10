#!/bin/bash

# This bash script is used setup the travel.db database as an executable sqlite3 database after 'git clone' the repo
# The script also sets up the clean/smudge config for the git instance  
# For details, see < https://gist.github.com/ebciii/e47cc453c51bae7aba1d9d9c9f40da25 > for setting up the clean/smudge
# Also see, https://stackoverflow.com/questions/18329621/storing-git-config-as-part-of-the-repository for resetting 'git config'

# Setup 'git config'
git config --local include.path ../.gitconfig
echo '*.db filter=sqlite3' >> .git/info/attributes

# Convert travel.db from sql statements to a sqlite3 binary
mv travel.db travel_setup.sql
cat travel_setup.sql | sqlite3 travel.db
rm travel_setup.sql