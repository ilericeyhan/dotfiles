# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/ceyhan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ripgrep zsh-syntax-highlighting zsh-autosuggestions command-not-found)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias copy-falcon-image='cp -v SPK/Obj/debug/binaries/bskyb-falcon-d1-uhd/zImage /tftpboot'
alias copy-mrbox-image='cp -v SPK/Obj/debug/binaries/bskyb-mr412/uImage /tftpboot/'
alias copy-viper-image='cp -v 4.14L.04-SkyHybridRouting/bcm963xx/targets/BSKYB_VIPER/bcmBSKYB_VIPER_fs_kernel /tftpboot/'
alias copy-booster2-image='cp -v broadcom-gw-bsp-4.14L.04-bskyb-QR11/bcm963xx/targets/EXTENDER/bcmEXTENDER_fs_kernel /tftpboot/'
alias copy-gemini-image='cp -v 3.0.113/Obj/debug/binaries/bskyb-gemini419/zImage /tftpboot'
alias copy-hub4-image='cp -v release/image-brcm-gw-arm-linux--release-1.0.5.0-SKY-HUB-4-RM/AirTies-SR200-3-0-2-0078-TR.rel.w /tftpboot/'
alias copy-booster4-image='cp -v release/image-brcmap-arm-brcm-linux-uclibcgnueabi--release-1.0.5.0-SKY-Booster-4-RM/linux.img.signed /tftpboot'
alias copy-viper-image-cloud='cp -v 4.14L.04-SkyHybridRouting-Mesh-1.1/bcm963xx/targets/BSKYB_VIPER/bcmBSKYB_VIPER_fs_kernel /tftpboot/'
alias copy-viper-image-remote-manager='cp -v 4.14L.04-SkyHybridRouting-Mesh-1.0-RM/bcm963xx/targets/BSKYB_VIPER/bcmBSKYB_VIPER_fs_kernel /tftpboot/'
alias copy-titan-image='cp -v SPK/Obj/debug/binaries/sky-one-box/zImage /tftpboot'

# Yavide alias
alias yavide="gvim --servername yavide -f -N -u /opt/yavide/.vimrc"
alias bs='./tools/bake shell'
alias ball='./tools/bake all'
alias bak='./tools/bake'
alias bakv='USE_LOCAL_TOOLCHAINS=y BUILD_TYPE=debug ./tools/bake'
alias bsv='USE_LOCAL_TOOLCHAINS=y BUILD_TYPE=debug ./tools/bake shell && cd airties-bskyb-* && source environment'
alias bs='./tools/bake shell && cd airties-bskyb-* && source environment'

alias buildv='USE_LOCAL_TOOLCHAINS=y BUILD_TYPE=debug tools/bake airties-rebuild'
alias disable-foss='USE_LOCAL_TOOLCHAINS=y BUILD_TYPE=debug tools/bake foss-disable'
alias buildvall='USE_LOCAL_TOOLCHAINS=y BUILD_TYPE=debug tools/bake all'
alias buildershell='USE_LOCAL_TOOLCHAINS=y BUILD_TYPE=debug tools/bake shell'
alias gitcheck='git pull --rebase --autostash'
alias reset-air-packet='git clean -x -d -f && git reset --hard'
alias logout="sudo pkill -u ${USER}"
alias restart-bluetooth-daemon="sudo /etc/init.d/bluetooth restart"
alias load-bluetooth-discover="pactl load-module module-bluetooth-discover"
alias reset-ttyUSB1="sudo stty -F/dev/ttyUSB1 19200 raw -echo"
alias change-corp-password="rdesktop terminal2.corp.airties.com"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export TERM=xterm-256color

# function title () { echo -e "\033]0;${1:?please specify a title}\007" ; }

DISABLE_AUTO_TITLE="true"

function set-title(){
  TITLE="\[\e]2;$*\a\]"
  echo -e ${TITLE}
}

alias buildv='USE_LOCAL_TOOLCHAINS=y BUILD_TYPE=debug tools/bake airties-rebuild'
alias disable-foss='USE_LOCAL_TOOLCHAINS=y BUILD_TYPE=debug tools/bake foss-disable'
alias buildvall='USE_LOCAL_TOOLCHAINS=y BUILD_TYPE=debug tools/bake all'
alias buildershell='USE_LOCAL_TOOLCHAINS=y BUILD_TYPE=debug tools/bake shell'
alias gitcheck='git pull --rebase --autostash'
alias reset-air-packet='git clean -x -d -f && git reset --hard'

export FZF_BASE="$HOME/.fzf"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

build-air-package () { tools/bake airties-package-"$1"}
copy-unstripped-binary () { cp -v release/rootfs/"$1" /tftpboot}

