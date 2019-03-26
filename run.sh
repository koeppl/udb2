#!/bin/bash
make
mkdir -p _logs
# ls */run-test* | grep -v log | xargs -i echo "{} | sed \"s@RESULT @RESULT experiment={}@\" | tee {}.log 2>&1" | sh
for ex in $(ls */run-test* | grep -v log); do
	[[ -x $ex ]] || continue
	name=$(dirname "$ex")
	extension=$(basename "$ex" | sed 's@run-test@@')
	[[ -n "$extension" ]] && name="$name$extension"
	echo "Running $name"
	# $ex | sed "s@RESULT @RESULT experiment=$name@" | tee _logs/$1.log 
	$ex 2>&1 | sed "s@RESULT @RESULT experiment=$name @" | tee _logs/$name.log 
done

