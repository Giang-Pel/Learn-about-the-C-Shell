#!/bin/csh
echo "Who are you?"
set string = $<
if("$string" == "Hello, I am THE WIND") then
	echo "Oh guy! Come on!"
else if("$string" == "Hi, I am THE DEER") then
	echo "Oh, Would you show me your gauze?"
else if("$string" == "Aloha, I am THE HABBIT") then
	echo "Ahihi, Would you show me your ear?"
else if("$string" == "I am a killer") then
	echo "May be, but! Go home plase!"
else 
	echo "I am sorry, good bye!"
	endif
exit 