#!/bin/csh

set file_a = pre_a_ex3_exp.txt
set file_b = pre_b_ex3_exp.txt
set file_c = pre_c_ex3_exp.txt
set final_ex3_exp = final_ex3_exp.txt

awk '{if ($1 == "FAIL:") sum_FAIL += $2} END {print "FAIL: " sum_FAIL}' $file_a $file_b $file_c | cat > $final_ex3_exp
awk '{if ($1 == "PASS:") sum_PASS += $2} END {print "PASS: " sum_PASS}' $file_a $file_b $file_c | cat >> $final_ex3_exp
awk '{if ($1 == "NOTCHECK:") sum_NOTCHECK += $2} END {print "NOTCHECK: " sum_NOTCHECK}' $file_a $file_b $file_c | cat >> $final_ex3_exp

echo "*************************" | cat >> $final_ex3_exp
awk '{sum_1 += $2} END {print "SUM1: " sum_1}' $file_a  | cat >> final_ex3_exp.txt
awk '{sum_2 += $2} END {print "SUM2: "sum_2}' $file_b  | cat >> final_ex3_exp.txt
awk '{sum_3 += $2} END {print "SUM3: "sum_3}' $file_c | cat >> final_ex3_exp.txt

cat final_ex3_exp.txt

exit

