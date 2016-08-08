# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew common-aliases git-extras osx tmux zsh_reload)
DEFAULT_USER=mpilman

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias -s cc=vim
alias -s c=vim
alias -s cpp=vim
alias -s h=vim
alias -s hpp=vim

PATH=/opt/local/bin:/usr/local/bin:/usr/local/sbin:/opt/local/sbin:~/.local/bin:~/bin:$PATH
if [ -e /home/vagrant/.nix-profile/etc/profile.d/nix.sh ]; then . /home/vagrant/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
if [ -d $HOME/.cargo/bin ]; then PATH=$HOME/.cargo/bin:$PATH; fi # if cargo is used
if [ -e $HOME/Projects/rustc-1.9.0 ]; then export RUST_SRC_PATH=$HOME/Projects/rustc-1.9.0/src; fi

export EDITOR=emacs
if [ -d /Applications/Emacs.app/ ]
then
	export EDITOR=emacsclient
fi
export PATH

if [[ $HOST == bach* ]]
then
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/local/mpilman/software/lib:/local/mpilman/software/lib64
    export PATH=/local/mpilman/software/bin:$PATH
    export C_INCLUDE_PATH=$C_INCLUDE_PATH:/local/mpilman/software/include
    export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/local/mpilman/software/include
    export LIBRARY_PATH=/local/mpilman/software/lib:/local/mpilman/software/lib64
    
    export http_proxy='http://proxy.ethz.ch:3128'
    export https_proxy='http://proxy.ethz.ch:3128'
fi

NIX_FILE=https://mpilman@github.com/mpilman/.home.git
if [ -e $NIX_FILE ]
then
    . $NIX_FILE
fi

function mgrep {
    if [ -z "$1" ]
    then
		echo "Parameter 1 not set"
    else
        if [[ `uname` == 'Darwin' ]]
        then
            find -E . -regex '.*\.(h|cpp)' -and -not -name \*.g.cpp -print0 | xargs -0 grep -n "$1" | less
        else
            find . -regex '.*\.\(h\|cpp\)' -and -not -name \*.g.cpp -print0 | xargs -0 grep -n "$1" | less
        fi
    fi
}
