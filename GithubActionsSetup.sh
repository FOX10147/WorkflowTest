#!/bin/sh
git clone $1
mkdir $2/.github
mkdir $2/.github/workflows
touch $2/.github/workflows/$3.yaml
git --git-dir=$2 add *
git --git-dir=$2 commit -m "Commit"
git --git-dir=$2 push -u origin master
rm -rf $2