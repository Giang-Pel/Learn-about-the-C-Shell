#!/bin/csh
echo -n "Nhap so thu nhat:"
set num1 = $<
echo -n "Nhap so thu hai:"
set num2 = $<
echo "Hai so ban da nhap lan luot la : $num1 va $num2"
echo "Tong cua 2 so la : $num1 + $num2 = `expr $num1 + $num2`"