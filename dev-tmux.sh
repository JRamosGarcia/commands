#!/bin/sh

rm ~/.dotfiles/.*.swp
rm ~/Documents/.*.swp

tmux new -s bitcoind -d 
tmux send-keys 'cd ~/programas/bitcoin-0.21.0/bin' C-m 'clear' C-m './bitcoind &'
tmux split-window -v
tmux send-keys 'cd ~/programas/bitcoin-0.21.0/bin' C-m 
tmux split-window -v
tmux send-keys 'cd ~/.bitcoin' C-m 
tmux send-keys 'clear' C-m
#
tmux new -s docker -d
tmux send-keys 'cd ~/git/commands' C-m 'clear' C-m
#
tmux new -s npm -d
tmux send-keys 'cd ~/git/mempool-explorer' C-m 'clear' c-m 'BROWSER=google-chrome npm start'
#
tmux new -s sshPi4 -d
tmux send-keys 'cd ~/git' C-m 'clear' C-m
tmux send-keys 'ssh ubuntu@pi4' C-m
#
tmux new -s sshLinode -d
tmux send-keys 'cd ~/git' C-m 'clear' C-m
tmux send-keys 'ssh root@mempoolexplorer.com' C-m
#
tmux new -s server -d
tmux send-keys 'cd ~/git' C-m 'clear' C-m
tmux send-keys 'ssh tomillo@server' C-m
#
tmux new -s vim -d 
tmux send-keys 'cd ~/.dotfiles' C-m 
tmux send-keys 'vim readme.md' C-m ':tabe ~/.dotfiles/initComputer.sh' C-m ':tabe ~/Documents/shortcuts.txt' C-m ':tabe ~/Documents/comandos-linux.txt' C-m ':tabe ~/Documents/tareas.txt' C-m
#
tmux attach

