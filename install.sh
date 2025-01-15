#!/bin/sh

echo 'git-ssh() {
    if [ ! -f ".git/config" ]; then
        echo "git 未初始化"
        return 1
    fi
    git config --local core.sshCommand "ssh -i $1"
}' >> ~/.bashrc
source ~/.bashrc

echo 'done.'
