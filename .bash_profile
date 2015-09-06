####### REFERENCE
## for() loop
## for MSF in $(ls msf*);do ln -s /usr/local/share/metasploit-framework/$MSF /usr/local/bin/$MSF;done
##
## write into file
## sudo echo thing to write goes here >> myfile.txt
## sudo echo export MSF_DATABASE_CONFIG=/usr/local/share/metasploit-framework/config/database.yml >> /etc/profile
##
## download list of urls
## wget -i pdes.txt
#######

## Search within current directory
## ls | grep Makefile

export PATH="/local/Metasploit:$PATH"
## Armitage requires in path: msfrpcd

#export JAVA_HOME="/usr/bin"
export JAVA_HOME=$(/usr/libexec/java_home)

export HOMEBREW_GITHUB_API_TOKEN=33f1e8767be326af513c8ecdbf7207817f6ff107

export PYTHONPATH=$PYTHONPATH:'./src'

export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced

#export MSF_DATABASE_CONFIG=/usr/local/share/metasploit-framework/config/database.yml
export MSF_DATABASE_CONFIG=/local/Metasploit/config/database.yml
export MAGNET_TOOL_HOME=/usr/local/bin/r2mfoo

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH="$PATH:/usr/local/Cellar/android-sdk/24.3.3/tools:/usr/local/Cellar/android-sdk/24.3.3/platform-tools"
#t
export PATH="$PATH:/local/Metasploit/msfrpcd"

#alias ls='ls -GFh'

# http://www.cyberciti.biz/open-source/use-logstalgia-apachepong-as-website-access-log-realtime-visualization-tool/
# Realtime from STDIN: tail -f /var/log/httpd/access_log | logstalgia --sync
alias log="logstalgia --load-config dangerous.conf data/example.log"
alias logsave="logstalgia -f -font-size 20 --save-config dangerous.conf"

alias src="source /etc/profile;source ~/.bash_profile"

alias meta="cd /local/Metasploit/; ./msfconsole"

alias locateupdate="sudo /usr/libexec/locate.updatedb"

alias subl="open -a \"/Applications/Sublime Text.app\""
alias atom="open -a \"/Applications/Atom.app\""
alias edit="open -a \"/Applications/Atom.app\""
alias docs="cd /Library/WebServer/Documents/stunner-docs"
alias docsview="cd /Library/WebServer/Documents/stunner-docs; grunt;"
alias sketch="sketchtool"

alias fuck='$(thefuck $(fc -ln -1))'

alias net='sudo /usr/local/Cellar/iftop/1.0pre4/sbin/iftop'

function ext {
  CHROME_EXTENSIONS_PATH="~/Library/Application\ Support/Google/Chrome/Default/Extensions"
  #open $CHROME_EXTENSIONS_PATH
  open ~/Library/Application\ Support/Google/Chrome/Default/Extensions
  echo "Opened Chrome Extensions in Finder";
}

alias podclean="sudo rm -fr ~/.cocoapods/repos/master; pod setup;"
alias podupdate="pod repo update"
alias dd="sudo rm -Rf ~/Library/Developer/Xcode/DerivedData; emptytrash"
alias screenrec="cd /Volumes/Passport/Development/android-sdk-macosx/platform-tools/"

function xclocal {
  BASE="~/Library/Developer/Xcode/"
  DD="${BASE}DerivedData"
  defaults write com.apple.dt.XCode IDECustomDerivedDataLocation $DD;
  defaults read com.apple.dt.XCode IDECustomDerivedDataLocation
}

function xcext {
  BASE="/Volumes/Passport/Xcode/"
  DD="${BASE}DerivedData"
  defaults write com.apple.dt.XCode IDECustomDerivedDataLocation $DD;
  defaults read com.apple.dt.XCode IDECustomDerivedDataLocation
}

# SMS
# http://osxdaily.com/2014/03/12/send-sms-text-message-from-command-line/
# http://textbelt.com/
function sms {
  TO="2158684052"
  curl http://textbelt.com/text -d number=$TO -d "message=$1";
  echo "message sent";
}

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

#function wopen="xc"
function xc { # via https://gist.github.com/coryalder/5609996
  WORKSPACE="${PWD##*/}.xcworkspace"
  PROJECT="${PWD##*/}.xcodeproj"
  if [ -a $WORKSPACE ]; then
    open $WORKSPACE;
  elif [ -a $PROJECT ]; then
    open $PROJECT;
  else
    echo "No workspace or project found.";
  fi
} # open Xcode workspace/project of same name as current directory.

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM
export NODE_PATH="/Users/davidwalsh/.nvm/v0.10.22/lib/node_modules"

alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dev="cd ~/Development"
alias gh="dev; cd iOS/borndangerous"
alias gc="git clone"
alias gp="git push origin master"
alias ga="git add --all"
alias al="atom ~/.bash_profile"
alias pi="pod install"
alias pu="pod update"
alias pii="cd ../; pod install"

alias g="git"

alias xcenablesavedstate="mv ~/Library/Saved\ Application\ State/com.apple.dt.Xcode.savedState-bk ~/Library/Saved\ Application\ State/com.apple.dt.Xcode.savedState"
alias xcdisablesavedstate="mv ~/Library/Saved\ Application\ State/com.apple.dt.Xcode.savedState ~/Library/Saved\ Application\ State/com.apple.dt.Xcode.savedState-bk"

#alias ls="ls -al"
#alias ls="ls -lt"

alias xcode="open -a /Applications/Xcode.app"

alias st="cd /Volumes/Passport/Stunner/Code/iOS/Stunner2"
alias podfile="st; xcode Podfile"
alias st1="cd /Volumes/Passport/Snapback/Code/iOS/master/reactor_ios/trunk"
alias server="cd ~/Documents/Snapback/Code/Server/reactor_server/trunk/src"
#alias android="cd /Volumes/Passport/Snapback/Code/Android/trunk/src/main"

alias ws="cd /Library/WebServer/Documents/"
alias web="cd /Library/WebServer/Documents/"

#alias st="svn status"
#alias up="svn update"

export PATH="/Users/davidwalsh/Library/Application Support/GoodSync":$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"
#alias ls="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
#alias ls="command ls -lF ${colorflag}"
alias ls="command ls -al ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Enable aliases to be sudo’ed
# alias sudo='sudo '

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
# (useful when executing time-consuming commands)
alias badge="tput bel"

# Ring the terminal bell
alias ding="bel"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

export NARWHAL_ENGINE=jsc

export PATH="/usr/local/narwhal/bin:$PATH"

export CAPP_BUILD="/Users/davidwalsh/Development/Objective-J/Build"

export DYLD_LIBRARY_PATH=/Volumes/Warehouse/_iOSTools/imobiledevice-macosx/:$DYLD_LIBRARY_PATH
export PATH=${PATH}:/Volumes/Warehouse/_iOSTools/imobiledevice-macosx/

export CPPFLAGS="-I/opt/local/include"
export LDFLAGS="-L/opt/local/lib"

##
# Your previous /Users/davidwalsh/.bash_profile file was backed up as /Users/davidwalsh/.bash_profile.macports-saved_2015-06-25_at_17:45:49
##

# MacPorts Installer addition on 2015-06-25_at_17:45:49: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

###-tns-completion-start-###
if [ -f /Users/davidwalsh/.tnsrc ]; then
    source /Users/davidwalsh/.tnsrc
fi
###-tns-completion-end-###

# added by Anaconda 2.3.0 installer
export PATH="/Users/davidwalsh/anaconda/bin:$PATH"
