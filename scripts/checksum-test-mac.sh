#!/usr/bin/env sh

test_dir=checksum-test
f1=`echo -e "new\nline"`
f2='back\slash'

echo --help

echo "'$f1'"
echo "'$f2'"

mkdir "$test_dir"
cd "$test_dir"

echo newline > "$f1"
echo backslash > "$f2"

shasum -a 256 *

cd ../
rm -r "$test_dir"
