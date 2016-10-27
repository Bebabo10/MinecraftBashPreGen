#!/bin/bash

session=${1:-"0"}:0
delay=${2:-"10"}
border=${3:-"1000"}
user=${4:-""}
view=${5:-"8"}


tpd=($view/2)+1



tmux send-keys -t $session 'gamemode '$user' 1' Enter

for (( r=$border; r>-$border ; r=r-$tpd )) do
        for (( c=$border; c>-$border ; c=r-$tpd )) do

                tmux send-keys -t $session 'tppos '$user' '$r' 120 '$c' -f' Enter

                sleep $delay




        done






done
