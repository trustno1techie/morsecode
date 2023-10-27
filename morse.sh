#!/bin/bash
# International Morse Code console - sound generator
# This script depends on "sox" and "zenity".
# Written by LK

#Tone configuration:
short=0.08
long=0.18
tune=880
pause=0.5


#Check if sox and zenity is available:

if ! command -v sox &> /dev/null
then
    zenity --error \
--text=""sox" is required for this aplication to run. Please install "sox" and try again."
    exit 1
fi

if ! command -v zenity &> /dev/null
then
    echo "zenity is required for this aplication to run. Please install zenity and try again."
    exit 1
fi


#Start console

exit=0

while [ "$exit" = "0" ]; do
clear

morsetext=`zenity --entry \
--title="Morse text" \
--text="Enter text:" \
--entry-text ""`

if [ "$?" = "1" ]; then
exit=1
fi

zenity --progress --title="Morse code" --text="Generating morse code" --pulsate --no-cancel --ok-label "Hide" &
PID=$!

letters=()

for (( i=0; i<${#morsetext}; i++ )); do
    letters+=("${morsetext:i:1}")
done


index=0
while [ $index -lt ${#letters[@]} ]; do

key=${letters[$index]}
echo "Generating letter: $key"
    

if [ "$key" = "a" ]; then  # a .-
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "b" ]; then  # b -...
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "c" ]; then  # c -.-.
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "d" ]; then  # d -..
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "e" ]; then  # e .
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "f" ]; then  # f ..-.
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "g" ]; then  # g --.
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "h" ]; then  # h ....
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "i" ]; then  # i ..
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "j" ]; then  # j .---
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "k" ]; then  # k -.-
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "l" ]; then  # l .-..
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "m" ]; then  # m --
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "n" ]; then  # n -.
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "o" ]; then  # o ---
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "p" ]; then  # p .--.
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "q" ]; then  # q --.-
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "r" ]; then  # r .-.
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "s" ]; then  # s ...
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "t" ]; then  # t -
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "u" ]; then  # u ..-
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "v" ]; then  # v ...-
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "w" ]; then  # w .--
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "x" ]; then  # x -..-
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "y" ]; then  # y -.--
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "z" ]; then  # z --..
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "1" ]; then  # 1 .----
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "2" ]; then  # 2 ..---
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "3" ]; then  # 3 ...--
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "4" ]; then  # 4 ....-
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "5" ]; then  # 5 .....
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi


if [ "$key" = "6" ]; then  # 6 -....
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "7" ]; then  # 7 --...
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "8" ]; then  # 8 ---..
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "9" ]; then  # 9 ----.
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $short sine $tune vol 0.5 &>/dev/null
fi

if [ "$key" = "0" ]; then  # 0 -----
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
play -n synth $long sine $tune vol 0.5 &>/dev/null
fi

    index=$((index+1))
    sleep $pause
   
done

kill $PID
 

done
