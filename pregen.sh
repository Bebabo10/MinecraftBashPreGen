#!/bin/bash

session=${1:-"0"}:0
delay=${2:-"10"}
border=${3:-"1000"}
user=${4:-""}

tmux send-keys -t $session 'gamemode '$user' 1' Enter

for (( r=$border; r>-$border ; r=r-16 )) do
        for (( c=$border; c>-$border ; c=r-16 )) do

                tmux send-keys -t $session 'tppos '$user' '$r' 120 '$c' -f' Enter

                sleep $delay




        done






done
