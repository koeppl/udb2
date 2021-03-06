#!/bin/bash
make
mkdir -p _logs
# ls */run-test* | grep -v log | xargs -i echo "{} | sed \"s@RESULT @RESULT experiment={}@\" | tee {}.log 2>&1" | sh
# for ex in $(ls */run-test* | grep -v log); do


for ex in c++11/run-test separate_chaining/run-test-cht separate_chaining/run-test-compact separate_chaining/run-test-plain sparsehash/run-test tsl_sparse_map/run-test sparsepp/run-test rigtorp/run-test compact_sparse_hash/run-test-cv-plain   compact_sparse_hash/run-test-elias-plain   compact_sparse_hash/run-test-layered-plain compact_sparse_hash/run-test-cv-sparse  compact_sparse_hash/run-test-elias-sparse  compact_sparse_hash/run-test-layered-sparse; do
	[[ -x $ex ]] || continue
	name=$(dirname "$ex")
	extension=$(basename "$ex" | sed 's@run-test@@')
	[[ -n "$extension" ]] && name="$name$extension"
	echo "Running $name"
	# $ex | sed "s@RESULT @RESULT experiment=$name@" | tee _logs/$1.log 
	$ex 2>&1 | sed "s@RESULT @RESULT experiment=$name @" | tee _logs/$name.log 
done
cat _logs/*.log | grep '^RESULT' > _logs/udb2.txt

sed -i 's@c++11@std@' _logs/udb2.txt
sed -i 's@separate_chaining-compact@chtI@' _logs/udb2.txt
sed -i 's@separate_chaining-cht@chmapI@' _logs/udb2.txt
sed -i 's@separate_chaining-plain@plainI@' _logs/udb2.txt
sed -i 's@tsl_sparse_map@tsl@' _logs/udb2.txt
sed -i 's@sparsehash@google@' _logs/udb2.txt
sed -i 's@sparsepp@spp@' _logs/udb2.txt
sed -i 's@sparsepp@spp@' _logs/udb2.txt
sed -i 's@compact_sparse_hash-cv-plain@clearyP@' _logs/udb2.txt
sed -i 's@compact_sparse_hash-elias-plain@eliasP@' _logs/udb2.txt
sed -i 's@compact_sparse_hash-layered-plain@layeredP@' _logs/udb2.txt
sed -i 's@compact_sparse_hash-cv-sparse@clearyS@' _logs/udb2.txt
sed -i 's@compact_sparse_hash-elias-sparse@eliasS@' _logs/udb2.txt
sed -i 's@compact_sparse_hash-layered-sparse@layeredS@' _logs/udb2.txt

sp-process plot.gp
sed -i 's@title "experiment=@title "@' plot.gp
