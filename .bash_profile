parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias gitca="git add -u && git commit --amend"
alias gittrunk="git checkout trunk && git fetch upstream && git merge upstream/trunk && git push"
source ~/git-completion.bash 
alias gitpf="~/.git_push.sh"
alias ojira="~/.open_jira.sh"
