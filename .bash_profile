# generated by Git for Windows
test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc


parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

get_user() {
    if [ "$(whoami)" = "WHorowi" ]; then
        local W="\[\033[01;38;5;124m\]P"
        local H="\[\033[01;38;5;160m\]r"
        local o="\[\033[01;38;5;196m\]o"
        local r="\[\033[01;38;5;161m\]f"
        local o2="\[\033[01;38;5;168m\]i"
        local w="\[\033[01;38;5;231m\]l"
        local i="\[\033[01;38;5;231m\]e"
        local __user="$W$H$o$r$o2$w$i"
    else
        local __user="\[\033[01;36m\]\u"
    fi
    echo $__user
}

get_hostname(){
    if [ "$HOSTNAME" = "LITWPICE0223629" ]; then
        local L="\[\033[01;38;5;231m\]T"
        local I="\[\033[01;38;5;231m\]h"
        local T="\[\033[01;38;5;231m\]i"
        local W="\[\033[01;38;5;231m\]s"
        local P="\[\033[01;38;5;159m\]I"
        local I2="\[\033[01;38;5;0117m\]s"
        local C="\[\033[01;38;5;081m\]M"
        local E="\[\033[01;38;5;045m\]y"
        local num1="\[\033[01;38;5;039m\]L"
        local num2="\[\033[01;38;5;033m\]a"
        local num3="\[\033[01;38;5;033m\]p"
        local num4="\[\033[01;38;5;027m\]t"
        local num5="\[\033[01;38;5;027m\]o"
        local num6="\[\033[01;38;5;025m\]p"
        local num7="\[\033[01;38;5;025m\]!"
        local __hostname="$L$I$T$W$P$I2$C$E$num1$num2$num3$num4$num5$num6$num7"
    else
        local __hostname="\[\033[01;32m\]\u"
    fi
    echo $__hostname
}

# function that selects and return a random element from the EMOJIS set
RANDOM_EMOJI() {
  local SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
  echo $SELECTED_EMOJI;
}

function success_indicator() {
    if [ $? -eq 0 ] ; then
        echo "😎"
    else
        echo "💩"
    fi
}

# Colors for PS1
txtblk="\[\e[0;30m\]" # Black - Regular
txtred="\[\e[0;31m\]" # Red
txtgrn="\[\e[0;32m\]" # Green
txtylw="\[\e[0;33m\]" # Yellow
txtblu="\[\e[0;34m\]" # Blue
txtpur="\[\e[0;35m\]" # Purple
txtcyn="\[\e[0;36m\]" # Cyan
txtwht="\[\e[0;37m\]" # White
bldblk="\[\e[1;30m\]" # Black - Bold
bldred="\[\e[1;31m\]" # Red
bldgrn="\[\e[1;32m\]" # Green
bldylw="\[\e[1;33m\]" # Yellow
bldblu="\[\e[1;34m\]" # Blue
bldpur="\[\e[1;35m\]" # Purple
bldcyn="\[\e[1;36m\]" # Cyan
bldwht="\[\e[1;37m\]" # White
unkblk="\[\e[4;30m\]" # Black - Underline
undred="\[\e[4;31m\]" # Red
undgrn="\[\e[4;32m\]" # Green
undylw="\[\e[4;33m\]" # Yellow
undblu="\[\e[4;34m\]" # Blue
undpur="\[\e[4;35m\]" # Purple
undcyn="\[\e[4;36m\]" # Cyan
undwht="\[\e[4;37m\]" # White
bakblk="\[\e[40m\]"   # Black - Background
bakred="\[\e[41m\]"   # Red
bakgrn="\[\e[42m\]"   # Green
bakylw="\[\e[43m\]"   # Yellow
bakblu="\[\e[44m\]"   # Blue
bakpur="\[\e[45m\]"   # Purple
bakcyn="\[\e[46m\]"   # Cyan
bakwht="\[\e[47m\]"   # White
txtrst="\[\e[0m\]"    # Text Reset

# Array of Supported Emojis
EMOJIS=('🌄' '☀️' '☕️' '🍳' '🍞' '🐓' '🐔' '🌲' '🌳' '🌴' '🌵' '🌷' '🌺' '🌸' '🌹' '🌻' '🌼' '💐' '🌾' '🌿' '🍀' '🍁' '🍂' '🍃' '🍄' '☀️' '⛅️' '☁️' '☔️' '🌈' '🌊' '🗻' '🌍' '🌞' '💻' '🚽' '📚' '✂️' '🔪' '🍔' '🍕' '🍖' '🍗' '🍘' '🍙' '🍚' '🍛' '🍜' '🍝' '🍞' '🍟' '🍣' '🍤' '🍥' '🍱' '🍲' '🍳' '🍴' '🍏' '🍇' '🍉' '🍊' '🍌' '🍍' '🍑' '🍒' '🍓' '🍡' '🍢' '🍦' '🍧' '🍨' '🍩' '🍪' '🍫' '🍬' '🍭' '🍮' '🍰' '🍷' '🍸' '🍶' '🍹' '🍺' '🍻' '😴' '🌠' '🌑' '🌒' '🌔' '🌖' '🌘' '🌚' '🌝' '🌛' '🌜' '⛺️' '🌃' '🌉' '🌌');

ps_user=$(get_user)
ps_hostname=$(get_hostname)

PS1="\$(success_indicator) $ps_user@$ps_hostname: $bldgrn\W$bldylw\$(parse_git_branch)$txtrst\> "