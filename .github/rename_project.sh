#!/usr/bin/env bash
while getopts a:n:u:d: flag
do
    case "${flag}" in
        a) author=${OPTARG};;
        n) name=${OPTARG};;
    esac
done

echo "Author: $author";
echo "Project Name: $name";

echo "Renaming project..."

original_author="REPO_OWNER"
original_name="REPO_NAME"
# for filename in $(find . -name "*.*")
for filename in $(git ls-files)
do
    sed -i "s/$original_author/$author/g" $filename
    sed -i "s/$original_name/$name/g" $filename
    sed -i "s/$original_urlname/$urlname/g" $filename
    sed -i "s/$original_description/$description/g" $filename
    echo "Renamed $filename"
done

mv project_name $name

# This command runs only once on GHA!
rm -rf .github/template.yml