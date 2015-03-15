if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/.profile ]; then
   source ~/.profile
fi


# git aware prompt taken from https://github.com/jimeh/git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\[$(tput setaf 4)\]\u@\h \[$(tput setaf 2)\]\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n\$ "

# git auto complete taken from http://code-worrier.com/blog/autocomplete-git/
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias bash_profile="mate ~/.bash_profile"
alias profile="mate ~/.bash_profile"
alias reload="source ~/.bash_profile"
alias hosts="mate /etc/hosts"

alias gc="git checkout"
alias gf="git fetch --all"
alias gm="git merge"
alias gp="git pull"
alias gr="git reset --hard"
