#!/usr/bin/env sh

WIDTH=60
HEIGHT=11

bold=$(tput bold)
fg_black=$(tput setaf 0)
fg_red=$(tput setaf 1)
fg_green=$(tput setaf 2)
fg_yellow=$(tput setaf 3)
fg_blue=$(tput setaf 4)
fg_magenta=$(tput setaf 5)
fg_cyan=$(tput setaf 6)
fg_white=$(tput setaf 7)
reset=$(tput sgr0)

function center {
    cols=$(tput cols)
    text=$1
    printf "%*s\n" $(((${#text} + ${cols}) / 2)) "${text}"
}

function right {
    text=$1
    printf "%*s\n" ${WIDTH} "${text}"
}

function left {
    text=$1
    printf "%s%*s\n" "${text}" $((${WIDTH} - ${#text})) " "
}

function margin {
    lines=$((($(tput lines) - ${HEIGHT}) / 2))
    for i in $(seq 1 ${lines}); do echo; done
}

margin

center "$(right "${fg_yellow} I N /   R A I N B O W S ")"
echo
center "$(right "${fg_blue} I N   R A I N / B O W S ")"
center "$(left "${fg_black}i n s p i r e d   b y")"
center "$(right "${fg_green} I N   R A I N B O W S / ")"
center "$(left "${fg_white}      ${bold}radiohead${reset}")"
center "$(right "${fg_yellow} I N   R A I N _ B O W S ")"
center "$(left "${fg_black}    a r t w o r k")"
center "$(right "${fg_red}R A   D   I O H E A   _ D")"
echo
center "$(right "${fg_cyan}_ R A D   I O   H E A   D")"

margin