#!/bin/csh

set final_ex4_exp = final_ex4_exp.txt
set file_ = ~/EX_CSH/ex4 

awk '{if ($1 == "FAIL:") sum_FAIL += $2} END {print "FAIL: " sum_FAIL}' *.txt | cat > $final_ex4_exp
awk '{if ($1 == "PASS:") sum_PASS += $2} END {print "PASS: " sum_PASS}' *.txt | cat >> $final_ex4_exp
awk '{if ($1 == "NOTCHECK:") sum_NOTCHECK += $2} END {print "NOTCHECK: " sum_NOTCHECK}' *.txt | cat >> $final_ex4_exp

echo "*************************" | cat >> $final_ex4_exp

set number = 1
foreach file (*.txt)
	if ($file == $final_ex4_exp) then 
		continue
	endif
	awk '{sum_1 += $2} END {print "SUM" '$number' ": " sum_1}' $file  | cat >> final_ex4_exp.txt
end

cat final_ex4_exp.txt
exit