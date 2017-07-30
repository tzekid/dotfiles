# ARCH version of my .zshrc
export ZSH=/home/tzekid/.oh-my-zsh

# ZSH_THEME="agnoster"
ZSH_THEME="bullet-train"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colored-man-pages z wd)
DEFAULT_USER='tzekid'
source $ZSH/oh-my-zsh.sh
BULLETTRAIN_CONTEXT_DEFAULT_USER=tzekid
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Bullet-train zsh.theme
BULLETTRAIN_STATUS_EXIT_SHOW=true
BULLETTRAIN_DIR_BG=red
BULLETTRAIN_PROMPT_CHAR=λ
# Lambda is gaben
# Lambda is life
BULLETTRAIN_STATUS_BG=blue
BULLETTRAIN_RUBY_SHOW=false


### ALIASES ###
# Sudo
alias fucking='fuck'
alias please='fuck'

# Globals
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
alias cip='curl -s ipecho.net/plain'
alias wht='webhttrack'
tzsh() {
  echo "Your IP was: $(curl -s ipecho.net/plain)"
  echo "Your tor IP is: $(torify curl -s ipecho.net/plain)"
  torify zsh
  echo "\nBye bye"
  echo "Your IP is: $(curl -s ipecho.net/plain)"
}

# Ruby
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# source ~/.rvm/scripts/rvm

#Linuxbrew
export PATH="/home/tzekid/.linuxbrew/bin:$PATH"
export MANPATH="/home/tzekid/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/tzekid/.linuxbrew/share/info:$INFOPATH"
# Syntax highlightling
source /home/tzekid/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Exercism &co.
export PATH=$HOME/binz:$PATH

# Miniconda
export PATH="/home/tzekid/binz/miniconda3/bin:/home/tzekid/Downloads/git/Nim/bin
:$PATH"

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

# Curl
alias clo='curl -L -O'export PATH="/home/tzekid/.linuxbrew/bin:$PATH"
export MANPATH="/home/tzekid/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/tzekid/.linuxbrew/share/info:$INFOPATH"

# Taskwarrior
alias t='clear;task next'

# Crystal
#export CRYSTAL_BIN='/home/tzekid/Downloads/git/crystal-stuff/crystal/.build/crystal'
#export PATH=$PATH:/home/tzekid/Downloads/git/crystal-stuff/crystal/.build
#alias crystal='/home/tzekid/Downloads/git/crystal-stuff/crystal/.build/crystal'
alias cr='crystal'
alias crd='crystal deps'
alias crz='crystal docs'
alias cre='crystal eval'
alias crs='crystal spec'
alias crb='crystal build --release'
# alias crn='~/Downloads/git/crystal/bin/crystal'
# alias cr='~/Downloads/git/crystal/bin/crystal'

# Atom
alias atom='atom-beta --disable-gpu'

fpath+=~/.zfunc

# Rust
source $HOME/.cargo/env

alias cz='code ~/.zshrc'
alias y='yaourt'
alias yns='yaourt -S --noconfirm'

export GEM_HOME=$(ruby -e 'print Gem.user_dir')
GEM_HOME=$(ls -t -U | ruby -e 'puts Gem.user_dir')
GEM_PATH=$GEM_HOME
export PATH=$PATH:$GEM_HOME/bin
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

alias kW="killall WhatsApp;echo WhatsApp\'z dead"

# Twitter vars
export TWITTER_CONSUMER_KEY="RmuPIaiAiuSdmL7SSv5phdevj"
export TWITTER_CONSUMER_SECRET="nt8uIDtEf4o1QXHCFmmaBPiC0bFRjNS2uKeHU8abyeBDeX2zQ6"
export TWITTER_ACCESS_TOKEN="2378268811-MBVnJHwTT5Cm0juiRbzDKjU0KSspRfFsGOfn1al"
export TWITTER_ACCESS_TOKEN_SECRET="mX3afFWrHUaOacd0v6HVz65IvsGrMJoKX7ku0wJwkLA2d"

alias x='chmod a+x'

# free swap space
swap_to_memory() {
  echo "This may take a while ..."
  sudo swapoff -a
  sudo swapon /dev/sda5 # where sdaX -> linuxswap partition
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

### Hi, kid
# hi() {
#   taime=$(date +"%H")
#   if $taime < 
# }

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
  makepkg --skipinteg -s
}; alias gab='get_and_build'
# export WINEARCH=win32


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
}; alias sts='string_to_snakecase'

filename_to_snakecase() {
  mv ./$1 ./$(sts $1)
}; alias fts='filename_to_snakecase'


cheat_engine() {
  sudo /home/tzekid/Downloads/dump/ceserver &
  wine "/home/tzekid/.wine/drive_c/Program Files/Cheat Engine 6.6/Cheat Engine.exe" &
  disown
}; alias ce='wine "/home/tzekid/.wine/drive_c/Program Files/Cheat Engine 6.6/Cheat Engine.exe"'

# export WINEARCH=win32
# export WINEPREFIX="/home/tzekid/.wine"

# click_to_pid
alias ctp="xprop _NET_WM_PID | cut -d' ' -f3"

alias open='xdg-open'

export XDG_DATA_DIRS=/usr/share/gnome:/usr/local/share/:/usr/share/

export LIBRARY_PATH=/home/tzekid/Downloads/aur/crsfml/voidcsfml/lib
export LD_LIBRARY_PATH="$LIBRARY_PATH"

alias whereami='echo "$(curl ipinfo.io 2>/dev/null)\n"'

# Cake
export CAKEROOT=$HOME/.cake
export PATH=$PATH:$CAKEROOT/bin

alias sze='du -bhs'
# Cake
export CAKEROOT=$HOME/.cake
export PATH=$PATH:$CAKEROOT/bin

# Forgot from where dis one be ...
eval "$(vg eval --shell zsh)"

# Radukobrew @ perl6
eval "$(/home/tzekid/.rakudobrew/bin/rakudobrew init -)"
