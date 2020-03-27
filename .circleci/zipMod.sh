#!/bin/sh
https://github.com/lolghurt/iam4-ohno/blob/master/.circleci/zipMod.sh
# CHANGE ME
modFolderName="IAM-Pawt-4-Oh-Nyo"

version=$(git describe --tags)
zipName=$modFolderName-$version.zip
git archive master -o $zipName --prefix $modFolderName-$version/
mkdir -p ./artifacts
mv ./$zipName ./artifacts/
