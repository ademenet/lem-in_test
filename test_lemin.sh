#!/bin/bash

#
# This is a shell script in order to test your lem-in program.
#

test_antsize()
{
	for i in {1..24}
	do
		printf "\033[34;1m./lem-in < test/test_antsize%d\n\033[0m" $i
		./lem-in < test/test_antsize$i
		echo '-----'
	done
}

test_cmd()
{
	for i in {1..15}
	do
		printf "\033[34;1m./lem-in < test/test_cmd%d\n\033[0m" $i
		./lem-in < test/test_cmd$i
		echo '-----'
	done
}


test_comment()
{
	for i in {1..21}
	do
		printf "\033[34;1m./lem-in < test/test_comment%d\n\033[0m" $i
		./lem-in < test/test_comment$i
		echo '-----'
	done
}

test_multi()
{
	for i in {1..5}
	do
		printf "\033[34;1m./lem-in < test/test_multi%d\n\033[0m" $i
		./lem-in < test/test_multi$i
		echo '-----'
	done
}

test_valid1()
{
	for i in {1..16}
	do
		printf "\033[34;1m./lem-in < test/test_valid%d\n\033[0m" $i
		./lem-in < test/test_valid$i
		echo '-----'
	done
}

test_valid2()
{
	for i in {1..31}
	do
		printf "\033[34;1m./lem-in < test/test_%d.map\n\033[0m" $i
		./lem-in < test/test_$i.map
		echo '-----'
	done
}

test_bonus()
{
	printf "\033[34;1m./lem-in -c < test/test_30.map\n\033[0m"
	./lem-in -c < test/test_30.map
	echo '-----'
	printf "\033[34;1m./lem-in -v < test/test_err2.map\n\033[0m"
	./lem-in -v < test/test_err2.map
	echo '-----'
	printf "\033[34;1m./lem-in -v < test/test_err7.map\n\033[0m"
	./lem-in -v < test/test_err7.map
	echo '-----'
}

# Checking if the program exist. If not: do make.
# if [ ! -f ./lem-in ];
# then
# 	make
# fi

# Ask the user which test to launch.
while true; do
	title="LEM-IN TESTS"
	printf "%*s\n" $(($COLUMNS/2)) "$title"
	echo "\033[34;1mChoose a test:\n
		[1]\tAnt size\n
		[2]\tCommands\n
		[3]\tComments\n
		[4]\tRandom valids 1st part\n
		[6]\tRandom valids 2nd part\n
		[5-i]\tBig with i from 1 to 11\n
		[b]\tSee bonuses\n
		[q]\tQuit\n
		\033[0m"
	read tests
	case $tests in
		"1" )		test_antsize ;;
		"2" )		test_cmd ;;
		"3" )		test_comment ;;
		"4" )		test_valid1 ;;
		"6" )		test_valid2 ;;
		"5-1" )		./lem-in < test/test_big1.map ;;
		"5-2" )		./lem-in < test/test_big2.map ;;
		"5-3" )		./lem-in < test/test_big3.map ;;
		"5-4" )		./lem-in < test/test_big4.map ;;
		"5-5" )		./lem-in < test/test_big5.map ;;
		"5-6" )		./lem-in < test/test_big6 ;;
		"5-7" )		./lem-in < test/test_big7 ;;
		"5-8" )		./lem-in < test/test_big8 ;;
		"5-9" )		./lem-in < test/test_big9 ;;
		"5-10" )	./lem-in < test/test_big10 ;;
		"5-11" )	./lem-in < test/test_big11 ;;
		"b" )		test_bonus ;;
		"q" )		exit ;;
	esac
done
