### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

zinit ice lucid wait='0' atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

zinit wait"0" lucid light-mode for \
    zdharma-continuum/fast-syntax-highlighting \
    zdharma-continuum/history-search-multi-word

zinit ice wait"1" lucid for \
    OMZL::clipboard.zsh \
    OMZL::history.zsh \
    OMZL::key-bindings.zsh \
    OMZL::completion.zsh \
    OMZL::grep.zsh \
    OMZL::directories.zsh \
    OMZL::git.zsh \
    OMZP::git \
    OMZP::gitignore \
    OMZP::emoji \
    OMZP::vscode \
    OMZP::z

### End of Zinit's installer chunk

## starship
# eval "$(starship init zsh)"
# Load starship theme
# line 1: `starship` binary as command, from github release
# line 2: starship setup at clone(create init.zsh, completion)
# line 3: pull behavior same as clone, source init.zsh
zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship

#export STARSHIP_CONFIG=".config\starship.toml"

#export LC_ALL=zh_CN.UTF-8
#export LANG=zh_CN.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export TIME_STYLE=long-iso

## alias
alias cls='clear'
alias ls='ls --color=always --time-style="+%Y-%m-%d %H:%M:%S"'
alias less='less -R'
alias vi='vim'
alias grep="grep --color=auto"
# 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
# 在命令行直接输入 html 文件，会在 TextMate 中打开
#alias -s html=mate  
# 在命令行直接输入 ruby 文件，会在 TextMate 中打开 
#alias -s rb=mate
# 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s py=vi      
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi

## load other config
source ~/.profile
