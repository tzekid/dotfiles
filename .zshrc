# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/tzekid/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# COMPLETION_WAITING_DOTS="true"

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
  tmuxinator
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-completions
  z
)

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

###########################

alias fucking='fuck'
alias please='fuck'

thisMonth=$(date +%Y-%m_%B)
lastMonth=$(date -d "last month" +%Y-%m_%B)
alias tomorrow='date -d tomorrow +%F'
alias today='date +%F' # yyyy-mm-dd
alias yesterday='date -d yesterday +%F' # yyyy-mm-dd
alias now='date +%H:%M' # hh:mm


alias battery="upower -i $(upower -e | grep 'BAT') | grep -E \"state|to\ full|percentage\""

pipi() {
    pip2 install "$1"
    pip3 install "$1"
}


alias die_please='pkill -9 -f'
alias please_die='pkill -9 -f'
# refresh font cache
alias rfc='fc-cache -fv'
# Scripts
alias dma='~/scripts/disableMouseAcc.sh'


# Neat stuff
alias ccat='pygmentize -g -O style=colorful,lineos=1'
alias backlight='xbacklight -set'
alias brightness='xbacklight -set'

# Configs
alias rz='exec zsh'
#alias sz='subl ~/.zshrc'
alias mz='micro ~/.zshrc'
#alias pe='subl ~/.profile'
alias pe='micro ~/.profile'

# System
alias sdi='sudo -S dpkg -i'
alias i='sudo -S pacman -S --needed'
install-all() {
    echo Looking for $1
    pacman -Ssq $1 | grep $1 | sudo xargs pacman -S --needed
}; alias i-all='install-all'
alias iu='sudo -S pacman -U'
alias r='sudo -S pacman -R'
alias u='sudo -S pacman -Syu --noconfirm'
alias yu='yaourt -Syua'
alias purge='sudo -S apt-get -y purge'
alias ppa='sudo -S apt-add-repository -y'
alias search='pacman -Ss'
alias ssn='sudo shutdown now'
alias srn='sudo shutdown -r now'
alias sb='subl'

alias free_pacman="sudo rm -rf /var/lib/pacman/db.lck"

# Github
lazygit() {
  git add .
  git commit -a -m "$1"
  git push
}; alias lg=lazygit

github_clone() {
  if [[ $1 == *"://"* ]]; then
    git clone $1 $2
  else
    git clone "https://github.com/$1" $2
  fi
}; alias gcl='github_clone'
# alias gcl='git clone'


# NPM
alias nig='sudo -S npm -g install'
alias nis='sudo -S npm -S install'
alias nrg='sudo -S npm -g remove'
alias nrs='sudo -S npm -S remove'
alias nid='npm install -D '

# Brew
alias sbi='sudo -S brew install'

# Network & co.
alias slr='sudo /opt/lampp/lampp restart'
alias pms='python -m http.server'
alias cip='curl -s ipecho.net/plain; echo'
alias wht='webhttrack'
tzsh() {
  echo "Your IP was: $(curl -s ipecho.net/plain)"
  echo "Your tor IP is: $(torify curl -s ipecho.net/plain)"
  torify zsh
  echo "\nBye bye"
  echo "Your IP is: $(curl -s ipecho.net/plain)"
} # SETUP TOR | TORSOCKS FIRST !!! 

# Golang
export GOROOT=/usr/lib/go
export GOPATH=$HOME/gopath
export PATH=$GOROOT/bin:$GOPATH:$GOPATH/bin:$PATH

# i3
alias v3='vim ~/.config/i3/config'
alias m3='vim ~/.config/i3/config'

# Micro
alias m='micro'
alias mb='micro ~/.config/micro/bindings.json'
alias mo='micro ~/.config/micro/settings.json'

# Rust
alias irn='curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- --channel=nightly'
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# Chrome
alias gcs='google-chrome-stable'
alias gcb='google-chrome-beta'
alias gcu='google-chrome-unstable'
alias gcg='google-chrome --disable-gpu'

# Visual Studio Code
alias c='code'
alias c.='code .'

# Sublime
alias s='subl'
alias s.='subl .'

# Curl
alias clo='curl -L -O'export PATH="/home/tzekid/.linuxbrew/bin:$PATH"
export MANPATH="/home/tzekid/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/tzekid/.linuxbrew/share/info:$INFOPATH"

# Taskwarrior
# alias t='clear;task next'

# Crystal
alias cr='crystal'
alias crd='crystal deps'
alias crz='crystal docs'
alias cre='crystal eval'
alias crs='crystal spec'
alias crb='crystal build --release'

alias cz='code ~/.zshrc'
alias sz='subl ~/.zshrc'
alias y='yaourt'
alias yns='yaourt -S --noconfirm'
alias kW="killall WhatsApp;echo WhatsApp\'z dead"

alias x='chmod a+x'

# free swap space
swap_to_memory() {
  echo "This may take a while ..."
  sudo swapoff -a
  sudo swapon -a
  echo "done!"
}; alias stm='swap_to_memory'

export CHARLYDIR=/home/tzekid/Downloads/git/charly

alias rb='ruby'

tzekid="  __                 __   .__    .___
_/  |_________ ____ |  | _|__| __| _/
\   __\___   // __ \|  |/ /  |/ __ | 
 |  |  /  __/\  ___/|    <|  / /_/ | 
 |__| /_____ \\\\\___  >__|_ \__\____ | 
            \/    \/     \/       \/ "

# Wget w/ redirect
alias wgetr='wget --user-agent=Mozilla --content-disposition -E -c '
wget_all() {
  wget \
    --recursive \
    --no-clobber \
    --page-requisites \
    --adjust-extension \
    --convert-links \
    --restrict-file-names=windows \
    --domains $(echo $1 | sed 's!http://!!' | cut -d/ -f1) \
    --no-parent \
        $1
}

alias tx='tar xvzf'

get_and_build() {
  wget "https://aur.archlinux.org/cgit/aur.git/snapshot/$1.tar.gz"
  tar xvzf "$1.tar.gz"
  rm "$1.tar.gz"
  cd $1
  makepkg --skipinteg -isr
}; alias gab='get_and_build'


### AUTOMATE THE AUR BUILD PROCESS
# build() {
#   # wget "$1"
#   Iuws = $1
#   # diw= "$iuws" | grep -aob '/' | grep -oE '[0-9]+' | tail -1
#   # echo "diw is ${diw}"
#   # echo ${iuws: diw}
# }

alias fhs='fast-http-server'
alias kill_fhs='die_please fast-http-server'
fhsc() {
  kill_fhs
  code "/home/tzekid/Downloads/git/crystal"
  fast-http-server -d "/home/tzekid/Downloads/webz/crystal-lang.org/api/master" 8001 >/dev/null &
  fast-http-server -d "/home/tzekid/Downloads/webz/crystal-lang.org/docs" 8002 >/dev/null &
  cr play -p 8000 >/dev/null &
  disown
}
fhsk() {
  please_die crystal
  die_please fast-http-server
}

# Reset mouse speed (0.0 ^= normal)
# xinput --set-prop 10 'libinput Accel Speed' 0.0

# Thefuck
eval $(thefuck --alias)

# NVidia Settings
export vblank_mode=0

string_to_snakecase() {
  # python -c "print( '_'.join( \"$1\".lower().split() ) )"
  crystal eval "puts (\"$1\").downcase.gsub(' ', '_')"
  #!TODO nim version
}; alias sts='string_to_snakecase'

filename_to_snakecase() {
  mv ./$1 ./$(sts $1)
}; alias fts='filename_to_snakecase'


cheat_engine() {
  sudo /home/tzekid/Downloads/dump/ceserver &
  wine "/home/tzekid/.wine/drive_c/Program Files/Cheat Engine 6.6/Cheat Engine.exe" &
  disown
}; alias ce='wine "/home/tzekid/.wine/drive_c/Program Files/Cheat Engine 6.6/Cheat Engine.exe"'


# click_to_pid
alias ctp="xprop _NET_WM_PID | cut -d' ' -f3"
alias open='xdg-open'
alias wake_up='vlc ~/Videos/cocaine.mp4'
alias whereami='echo "$(curl ipinfo.io 2>/dev/null)\n"'

# Cake
export CAKEROOT=$HOME/.cake
export PATH=$PATH:$CAKEROOT/bin

alias sze='du -bhs'
# Cake
export CAKEROOT=$HOME/.cake
export PATH=$PATH:$CAKEROOT/bin

# Forgot from where dis one be ...
# eval "$(vg eval --shell zsh)"

alias play='vblank_mode=0 primusrun '
alias game='vblank_mode=0 primusrun '

alias ipv4='curl https://ipv4.wtfismyip.com/text'

alias lampp='/opt/lampp/lampp'

export WINEARCH=win64

# alias vim="nvim"
alias nv="nvim"
