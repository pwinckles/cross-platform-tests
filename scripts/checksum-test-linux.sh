#!/usr/bin/env sh

test_dir=checksum-test
f1=`echo -e "new\nline"`
f2='back\slash'

mkdir "$test_dir"
cd "$test_dir"

echo newline > "$f1"
echo backslash > "$f2"

sha256sum *

cd ../
rm -r "$test_dir"
