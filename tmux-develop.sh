#!/bin/sh
# Inspired by https://gist.github.com/todgru/6224848

session="develop"

tmux start-server

tmux new-session -d -s $session -n adhoc

tmux new-window -t $session:1 -n golang

tmux send-keys "cd $HOME/Codes/golang" C-m

tmux new-window -t $session:2 -n jupyter

tmux send-keys "cd $HOME/Codes/scripts" C-m

tmux send-keys "source ./venv/bin/activate" C-m

tmux select-window -t $session:0

tmux attach-session -t $session

