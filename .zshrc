# C2FO Stuff

export C2FO_HOME=/Users/jeff.stephens/Code/c2fo
export NODE_ENV=development
export USER_AUTH_HOME=~/Code/c2fo/user-auth-service
export TERM="xterm-256color"
#export GOPATH=/Users/jeff.stephens/go
#export GOROOT=/usr/local/bin/go
#export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
#export godep=$GOPATH/bin/godep

export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export KUBE_EDITOR='vim'

HISTFILE=~/.zsh_history

export ANSIBLE_VAULT_PASSWORD_FILE=~/.ssh/.ansible_vault_pass

alias tf="/usr/local/bin/terraform"
alias pg="ping 8.8.8.8"
alias prc="pr-me | pbcopy"
alias goland="/usr/local/bin/goland"
alias kc="kubectl"
alias ls="ls -alh"
alias ..="cd ../ && ls -alh"
alias ccode="cd ~/Code/c2fo/ && clear && ls -alh"
alias cgo="cd ~/go/src/github.com/c2fo && clear && ls -alh"
alias kcg="kubectl config get-contexts"
alias kcu="kubectl config use-context"
alias kcl="kubectl logs "
alias kcdp="kubectl describe pod "
alias ran="ranger"
alias alog="aws ecr get-login --registry-ids 602401143452 --no-include-email"
alias watch='watch '
alias kcdebug='kubectl run -i --rm --tty debug --image=centos --restart=Never -- bash'
alias kcc='kubectl run -it --rm --image=centos centos -- bash'

#PowerlineSettings
#POWERLEVEL9K_MODE="awesome-fontconfig"
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv vi_mode dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status kubecontext)
#POWERLEVEL9K_VCS_BRANCH_ICON=$'nf-dev-git_branch'
POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='028' # Green
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='255' # Whitish
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='008' # Dark Grey
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='255' # Whitish
POWERLEVEL9K_DIR_BACKGROUND='059' # Grey37
POWERLEVEL9K_DIR_FOREGROUND='255' # Grey37
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_VIRTUALENV_BACKGROUND='008'
POWERLEVEL9K_VIRTUALENV_FOREGROUND='255'
#POWERLEVEL9K_STATUS_BACKGROUND='059' # Grey37
#POWERLEVEL9K_STATUS_FOREGROUND='255' # Whitish
POWERLEVEL9K_KUBECONTEXT_FOREGROUND='255' # Whitish
#POWERLEVEL9K_VCS_FOREGROUND='021' # Dark blue
#POWERLEVEL9K_VCS_BACKGROUND='208' # Dark blue
POWERLEVEL9K_VI_INSERT_MODE_STRING="I"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="N"

autoload -U colors; colors
#source /usr/local/etc/zsh-kubectl-prompt/kubectl.zsh
#RPROMPT='%{$fg[white]%}[$ZSH_KUBECTL_PROMPT]%{$reset_color%}'

alias vcf="source ~/.virtualenvs/cf/bin/activate"
alias vans="source ~/.virtualenvs/ansible/bin/activate"
alias vfab="source ~/.virtualenvs/fabric/bin/activate"

alias stopcon="docker ps -aq | xargs -L 1 docker stop"
alias goc2fo="cd /Users/jeff.stephens/go/src/github.com/c2fo"
alias gogo="cd ~/go/src"
alias dc="/usr/local/bin/docker-compose"
alias ll="ls -ltra"
alias compose="docker-compose -p backing-app -f $C2FO_HOME/docker-compose.yml"
alias compose-prod="docker-compose -p backing-apps -f $C2FO/docker-compose.yml -f $C2FO_HOME/docker-compose.proddump.yml"
alias compose-testdata="docker-compose -p backing-apps -f $C2FO_HOME/docker-compose.yml -f $C2FO_HOME/docker-compose.testdata.yml"
alias c2fo_migrate="(cd $C2FO_HOME && (NODE_ENV=test grunt migrate) && grunt migrate)"
alias compose-reset="compose down && docker-clean run && compose up -d && sleep 5 && c2fo_migrate"
alias compose-prod-reset="compose-prod down && docker-clean run && compose-prod up -d && sleep 5 && c2fo_migrate"
alias compose-testdata-reset="compose-testdata down && docker-clean run && compose-testdata up -d && sleep 5 && c2fo_migrate"
alias tocme="~/Code/github-markdown-toc/gh-md-toc -"
alias awsbas="ssh -i ~/.ssh/kops centos@bastion-awscni-k8s-c2fo-i-fsuct2-767189538.us-west-2.elb.amazonaws.com"
alias kopsutil="ssh -i ~/.ssh/c2fochina.pem ec2-user@10.39.1.151"
alias h="history"
alias fltenv="export FLEETCTL_ENDPOINT=http://10.1.250.11:2379"

kci () {
        case "$1" in
                (eksnp) kubectl config use-context eks-us-west-2-non-prod ;;
                (eksp) kubectl config use-context eks-us-west-2-prod ;;
                (dr) kubectl config use-context eks-us-east-1-dr ;;
                (ekst) kubectl config use-context eks-us-west-2-testing ;;
                (vaultdev) kubectl config use-context eks-us-west-2-sec-dev-test ;;
                (gfss) kubectl config use-context gke_c2fo-application_us-west1-b_biggy ;;
                (guat) kubectl config use-context gke_c2fo-application_us-west1-b_biggy ;;
                (gprod) kubectl config use-context gke_c2fo-application_us-west1-a_prod-gke-us-west-1 ;;
                (eufss) kubectl config use-context gke_c2fo-application_europe-west3-c_frankfurt-1 ;;
                (euuat) kubectl config use-context gke_c2fo-application_europe-west3-c_frankfurt-1 ;;
                (euprod) kubectl config use-context gke_c2fo-application_europe-west3-c_prod-gke-eu-west-3 ;;
                (cnfss) kubectl config use-context beijing-1.k8s.local ;;
                (cnman) kubectl config use-context manual-beijing-1.k8s.local ;;
                (cnuat) kubectl config use-context beijing-1.k8s.local ;;
                (cnprod) kubectl config use-context prod-aws-cn-north-1.k8s.local ;;
                (inprod) kubectl config use-context eks-ap-south-1-prod ;;
                (infss) kubectl config use-context eks-ap-south-1-non-prod ;;
                (inuat) kubectl config use-context eks-ap-south-1-non-prod ;;
                (indevload) kubectl config use-context eks-ap-south-1-testing ;;
		(as2prod) kubectl config use-context gke_c2fo-application_europe-west3_eu-prod ;;
		(as2nonprod) kubectl config use-context gke_c2fo-application_europe-west3_eu-nonprod ;;

        esac
}


alias g!='git init' 
alias g.='git add .'
alias g.-file='git add'
alias gb='git branch'
alias gb-new='git checkout -b'
alias gblame='git blame'
alias gcl='git clone'
alias gcs='git commit -S'
alias gcout='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gll='git log'
alias gph='git push'
alias gph-f='git push -f'
alias gpl='git pull'
#alias gr='git remote'
#alias gr-list='git remote -v'
#alias gr-add='git remote add'
#alias greset='git reset --hard'
alias grevert-head='git revert HEAD'
alias grevert='git revert'
alias gs='git status'
GPG_TTY=$(tty)
export GPG_TTY
#alias gsh='git stash'
#alias gsh-a='git stash apply'
#alias gsh-c='git stash clear'
#alias gsh-d='git stash drop'
#alias gsh-l='git stash list'
#alias gsh-p='git stash pop'

# In order for gpg to find gpg-agent, gpg-agent must be running,
# and there must be an env variable pointing GPG to the gpg-agent socket.
# This little script, which must be sourced
# in your shell's init script (ie, .bash_profile, .zshrc, whatever),
# will either start gpg-agent or set up the
# GPG_AGENT_INFO variable if it's already running.

# Add the following
#if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
#    source ~/.gnupg/.gpg-agent-info
#    export GPG_AGENT_INFO
#else
#    eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
#fi


# virtual env

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/devel
source /usr/local/bin/virtualenvwrapper.sh


# add ssh keys, because these always seem to go away after a reboot

ssh-add -K ~/.ssh/noc_rsa 2>/dev/null
ssh-add -K ~/.ssh/frenzy_rsa 2>/dev/null
ssh-add -K ~/.ssh/id_rsa 2>/dev/null
ssh-add ~/.ssh/google_compute_engine 2>/dev/null

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.

export ZSH=/Users/jeff.stephens/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="terminalparty"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
  git
  vi-mode 
  zsh-completions 
  osx 
  sudo 
  iterm2 
  tmux 
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# The next line updates PATH for the Google Cloud SDK.

if [ -f '/Users/jeff.stephens/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/jeff.stephens/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.

if [ -f '/Users/jeff.stephens/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/jeff.stephens/google-cloud-sdk/completion.zsh.inc'; fi
source <(kubectl completion zsh)
source /usr/local/etc/bash_completion.d/pass
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="~/bin/:$PATH"

export NVM_DIR="/Users/jeff.stephens/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="/usr/local/opt/helm@2/bin:$PATH"
source /Users/jeff.stephens/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

