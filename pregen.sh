#!/bin/bash

session=${1:-"0"}
delay=${2:-"10"}
border=${3:-"1000"}
user=${4:-""}


for (( r=$border; r>-$border ; r=r-16 )) do
	for (( =$border; c>-$border ; c=r-16 )) do

		tmux send-keys -t $session 'tppos $user $r 120 $c' Enter
		
		sleep $delay




	done






done
