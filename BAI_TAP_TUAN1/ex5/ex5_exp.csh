#!/bin/csh

set final_ex5_exp = final_ex5_exp.txt
echo ""| cat > $final_ex5_exp
set file_ = *.txt

set file_name = `awk '{if ($0 == "#start conversation") print FILENAME}' $file_`
cat $file_name > $final_ex5_exp
sed -i '/#start conversation/d' $final_ex5_exp

echo "" | cat >> $final_ex5_exp

set file_name = `awk '{if ($0 == "#insert here") print FILENAME}' $file_`
foreach file ($file_name)
	cat $file >> $final_ex5_exp
	echo "" | cat >> $final_ex5_exp
end
sed -i '/#insert here/d' $final_ex5_exp

set file_name = `awk '{if ($0 == "#end conversation") print FILENAME}' $file_`
cat $file_name >> $final_ex5_exp
sed -i '/#end conversation/d' $final_ex5_exp

cat $final_ex5_exp

exit