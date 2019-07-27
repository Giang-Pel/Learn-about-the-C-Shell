#!/bin/csh
echo " Who are you? "
set yourname = $<
switch ("$yourname")
case "Hello, I am THE WIND":
	echo "Oh guy! Come on!"
	breaksw
case "Hi, I am THE DEER":
	echo "Oh, Would you show me your gauze?"
	breaksw
case "Aloha, I am THE HABBIT":
	echo "Ahihi, Would you show me"
	breaksw
case "I am a killer":
	echo "May be, but! Go home please!"
	breaksw
default 
	echo "I am sorry, good bye!"
endsw
exit