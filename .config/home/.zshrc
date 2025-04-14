export ZSH="$HOME/.oh-my-zsh"

ENABLE_CORRECTION="true"

# Themes
#ZSH_THEME="robbyrussell"

ZSH_THEME=""
PROMPT='%F{white}> %F{white}%~%f '

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)
source $ZSH/oh-my-zsh.sh

# Configuración de colores personalizados para zsh-syntax-highlighting
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#FF4C70,bold'     # Color general
ZSH_HIGHLIGHT_STYLES[bad-command]='fg=red,bold'           # Para comandos inválidos
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#00AAFF,bold'     # Palabras reservadas en azul
ZSH_HIGHLIGHT_STYLES[command]=fg=#00F5CE,bold  		  # Comandos válidos
ZSH_HIGHLIGHT_STYLES[alias]=fg=#00F5CE,bold   		  # Alias también en cian
ZSH_HIGHLIGHT_STYLES[builtin]=fg=#00F5CE,bold  		  # Comandos internos en cian

function dir_icon {
	if [[ "$PWD" == "$HOME" ]]; then
		echo "%B%F{black}%f%b"
	else
		echo "%B%F{cyan}%f%b"
	fi
}

function parse_git_branch {
	local branch
	branch=$(git symbolic-ref --short HEAD 2> /dev/null)
	if [ -n "$branch" ]; then
		echo " [$branch]"
	fi
}

PROMPT='%F{cyan}󰣇 %f %F{magenta}%n%f $(dir_icon) %F{red}%~%f%${vcs_info_msg_0_} %F{yellow}$(parse_git_branch)%f %(?.%B%F{green}.%F{red})%f%b '

#Alias
alias install='sudo pacman -S'
alias installu='sudo pacman -U'
alias updateup='sudo apt update && sudo apt upgrade -y'
alias update='sudo pacman -Syu'
alias upgrade='sudo apt upgrade -y'
alias clean='sudo apt autoremove && sudo apt autoclean'

alias ..='cd ..'
alias ll='ls -lh'
alias ls='lsd'
alias la='lsd -a'
alias lsa='ls -lah --color=auto'
alias lss='ls -lh --color=auto'

alias bj='cd /mnt/ntfs/'
alias bjd='/mnt/ntfs/Descargas'
alias bje='/mnt/ntfs/Documentos'
alias bji='/mnt/ntfs/Imágenes'
alias bjm='/mnt/ntfs/Música'
alias bjv='/mnt/ntfs/Videos'

#Path
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

#Flutter
export PATH="$PATH:$HOME/Dev-Tools/SDK/Flutter/bin/"

#Java
export JAVA_HOME="$HOME/Dev-Tools/JDK/Java/jdk-23.0.1+11/"
export PATH="$PATH:$JAVA_HOME/bin"
export PATH=$PATH:$HOME/Dev-Tools/Build-Tools/Gradle/gradle-8.10.2/bin/

#Java
export ANDROID_SDK_ROOT=$HOME/Dev-Tools/SDK/Android/
export ANDROID_HOME=$ANDROID_SDK_ROOT
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools/34.0.0
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
alias brave='brave --password-store=basic'
