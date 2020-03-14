# If you come from bash you might have to change your $PATH.

export PATH=$HOME/bin:/usr/local/bin:/usr/bin/git:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/haowwu/.oh-my-zsh"

export http_proxy=http://www-proxy-hqdc.us.oracle.com:80
export https_proxy=http://www-proxy-hqdc.us.oracle.com:80
export no_proxy='localhost,127.0.0.1,.oracle.com,.oracleiaas.com,.oraclecloud.com,.oraclecorp.com,.grungy.us'

# Note: maven 3.5.4 is recommended as latest=3.6.0 currently(Jan-2019) has 'findbugs' discrepancies observed
export M3_HOME="/Applications/apache-maven-3.6.3" 
export M3=$M3_HOME/bin
export PATH=$M3:$PATH

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster-time"


ZSH_DISABLE_COMPFIX="true"

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
# DISABLE_MAGIC_FUNCTIONS=true

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
plugins=(
	git
	npm
	yarn
	gradle
	sudo
	zsh-syntax-highlighting
	zsh-autosuggestions
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}


alias sshr1ad1="ssh -v -t -L 127.0.0.1:8081:ingress-proxy.svc.ad1.r1:8080 bastion-ad1.rb.r1.oci.oracleiaas.com watch -n 90 date"

alias sshr1ad2="ssh -v -t -L 127.0.0.1:8081:ingress-proxy.svc.ad2.r1:8080 bastion-ad2.rb.r1.oci.oracleiaas.com watch -n 90 date"

alias sshr2ad1="ssh -v -t -L 127.0.0.1:8082:ingress-proxy.svc.ad1.r2:8080 bastion-ad1.rb.us-phoenix-1.oci.oracleiaas.com watch -n 90 date"

alias sshr2ad2="ssh -v -t -L 127.0.0.1:8082:ingress-proxy.svc.ad2.r2:8080 bastion-ad2.rb.us-phoenix-1.oci.oracleiaas.com watch -n 90 date"

alias sshr2ad3="ssh -v -t -L 127.0.0.1:8082:ingress-proxy.svc.ad3.r2:8080 bastion-ad3.rb.us-phoenix-1.oci.oracleiaas.com watch -n 90 date"

alias sshiadad1="ssh -v -t -L 127.0.0.1:8083:ingress-proxy.svc.ad1.us-ashburn-1:8080 bastion-ad1.rb.us-ashburn-1.oci.oracleiaas.com watch -n 90 date"

alias sshiadad2="ssh -v -t -L 127.0.0.1:8083:ingress-proxy.svc.ad2.us-ashburn-1:8080 bastion-ad2.rb.us-ashburn-1.oci.oracleiaas.com watch -n 90 date"

alias sshiadad3="ssh -v -t -L 127.0.0.1:8083:ingress-proxy.svc.ad3.us-ashburn-1:8080 bastion-ad3.rb.us-ashburn-1.oci.oracleiaas.com watch -n 90 date"

alias sshfraad1="ssh -v -t -L 127.0.0.1:8084:ingress-proxy.svc.ad1.eu-frankfurt-1:8080 bastion-ad1.rb.eu-frankfurt-1.oci.oracleiaas.com watch -n 90 date"

alias sshfraad2="ssh -v -t -L 127.0.0.1:8084:ingress-proxy.svc.ad2.eu-frankfurt-1:8080 bastion-ad2.rb.eu-frankfurt-1.oci.oracleiaas.com watch -n 90 date"

alias sshfraad3="ssh -v -t -L 127.0.0.1:8084:ingress-proxy.svc.ad3.eu-frankfurt-1:8080 bastion-ad3.rb.eu-frankfurt-1.oci.oracleiaas.com watch -n 90 date"

alias sshlhrad1="ssh -v -t -L 127.0.0.1:8085:ingress-proxy.svc.ad1.uk-london-1:8080 bastion-ad1.rb.uk-london-1.oci.oracleiaas.com watch -n 90 date"

alias sshlhrad2="ssh -v -t -L 127.0.0.1:8085:ingress-proxy.svc.ad2.uk-london-1:8080 bastion-ad2.rb.uk-london-1.oci.oracleiaas.com watch -n 90 date"

alias sshlhrad3="ssh -v -t -L 127.0.0.1:8085:ingress-proxy.svc.ad3.uk-london-1:8080 bastion-ad3.rb.uk-london-1.oci.oracleiaas.com watch -n 90 date"

alias sshyyzad1="ssh -v -t -L 127.0.0.1:8086:ingress-proxy.svc.ad1.ca-toronto-1:8080 bastion-ad1.rb.ca-toronto-1.oci.oracleiaas.com watch -n 90 date"

alias sshnrtad1="ssh -v -t -L 127.0.0.1:8087:ingress-proxy.svc.ad1.ap-tokyo-1:8080 bastion-ad1.rb.ap-tokyo-1.oci.oracleiaas.com watch -n 90 date"

alias sshicnad1="ssh -v -t -L 127.0.0.1:8088:ingress-proxy.svc.ad1.ap-seoul-1:8080 bastion-ad1.rb.ap-seoul-1.oci.oracleiaas.com watch -n 90 date"

alias sshbomad1="ssh -v -t -L 127.0.0.1:8089:ingress-proxy.svc.ad1.ap-mumbai-1:8080 bastion-ad1.rb.ap-mumbai-1.oci.oracleiaas.com watch -n 90 date"

alias sshzrhad1="ssh -v -t -L 127.0.0.1:8090:ingress-proxy.svc.ad1.eu-zurich-1:8080 bastion-ad1.rb.eu-zurich-1.oci.oracleiaas.com watch -n 90 date"

alias sshgruad1="ssh -v -t -L 127.0.0.1:8091:ingress-proxy.svc.ad1.sa-saopaulo-1:8080 bastion-ad1.rb.sa-saopaulo-1.oci.oracleiaas.com watch -n 90 date"

alias sshsydad1="ssh -v -t -L 127.0.0.1:8092:ingress-proxy.svc.ad1.ap-sydney-1:8080 bastion-ad1.rb.ap-sydney-1.oci.oracleiaas.com watch -n 90 date"

alias sshjedad1="ssh -v -t -L 127.0.0.1:8093:ingress-proxy.svc.ad1.me-jeddah-1:8080 bastion-ad1.rb.me-jeddah-1.oci.oracleiaas.com watch -n 90 date"

alias sshamsad1="ssh -v -t -L 127.0.0.1:8094:ingress-proxy.svc.ad1.eu-amsterdam-1:8080 bastion-ad1.rb.eu-amsterdam-1.oci.oracleiaas.com watch -n 90 date"

alias sshkixad1="ssh -v -t -L 127.0.0.1:8095:ingress-proxy.svc.ad1.ap-osaka-1:8080 bastion-ad1.rb.ap-osaka-1.oci.oracleiaas.com watch -n 90 date"

alias sshmelad1="ssh -v -t -L 127.0.0.1:8096:ingress-proxy.svc.ad1.ap-melbourne-1:8080 bastion-ad1.rb.ap-melbourne-1.oci.oracleiaas.com watch -n 90 date"

alias sshyulad1="ssh -v -t -L 127.0.0.1:8097:ingress-proxy.svc.ad1.ca-montreal-1:8080 bastion-ad1.rb.ca-montreal-1.oci.oracleiaas.com watch -n 90 date"

alias sshhydad1="ssh -v -t -L 127.0.0.1:8098:ingress-proxy.svc.ad1.ap-hyderabad-1:8080 bastion-ad1.rb.ap-hyderabad-1.oci.oracleiaas.com watch -n 90 date"

alias sshynyad1="ssh -v -t -L 127.0.0.1:8099:ingress-proxy.svc.ad1.ap-chuncheon-1:8080 bastion-ad1.rb.ap-chuncheon-1.oci.oracleiaas.com watch -n 90 date"

alias sshlfiad1="ssh -v -t -L 127.0.0.1:9090:ingress-proxy.svc.ad1.us-langley-1:8080 bastion-ad1.us-langley-1.oraclegoviaas.com watch -n 90 date"

alias sshlufad1="ssh -v -t -L 127.0.0.1:9091:ingress-proxy.svc.ad1.us-luke-1:8080 bastion-ad1.us-luke-1.oraclegoviaas.com watch -n 90 date"

alias sshricad1="ssh -v -t -L 127.0.0.1:7070:ingress-proxy.svc.ad1.us-gov-ashburn-1:8080 bastion-ad1.us-gov-ashburn-1.oraclegoviaas.com watch -n 90 date"

alias sshtusad1="ssh -v -t -L 127.0.0.1:7072:ingress-proxy.svc.ad1.us-gov-phoenix-1:8080 bastion-ad1.us-gov-phoenix-1.oraclegoviaas.com watch -n 90 date"

alias sshpiaad1="ssh -v -t -L 127.0.0.1:7071:ingress-proxy.svc.ad1.us-gov-chicago-1:8080 bastion-ad1.us-gov-chicago-1.oraclegoviaas.com watch -n 90 date"

alias sshltnad1="ssh -v -t -L 127.0.0.1:10091:ingress-proxy.svc.ad1.uk-gov-london-1:8080 bastion-ad1.rb.uk-gov-london-1.oraclegoviaas.uk watch -n 90 date"

alias sshtiwad1="ssh -v -t -L 127.0.0.1:10201:ingress-proxy.svc.ad1.us-tacoma-1:8080 bastion-ad1.rb.us-tacoma-1.oci.oracleonsriaas.com watch -n 90 date"







