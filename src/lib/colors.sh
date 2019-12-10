# ---
# Color functions
# This file is a part of Bashly standard library
#
# Usage:
# Use any of the functions below to color or format a portion of a string.
# 
#   echo "before $(red this is red) after"
#   echo "before $(green_bold this is green_bold) after"
#
# ---

red() { printf "\e[31m$*\e[0m\n" ; }
green() { printf "\e[32m$*\e[0m\n" ; }
yellow() { printf "\e[33m$*\e[0m\n" ; }
blue() { printf "\e[34m$*\e[0m\n" ; }
magenta() { printf "\e[35m$*\e[0m\n" ; }
cyan() { printf "\e[36m$*\e[0m\n" ; }
bold() { printf "\e[1m$*\e[0m\n" ; }
underlined() { printf "\e[4m$*\e[0m\n" ; }
red_bold() { printf "\e[1;31m$*\e[0m\n" ; }
green_bold() { printf "\e[1;32m$*\e[0m\n" ; }
yellow_bold() { printf "\e[1;33m$*\e[0m\n" ; }
blue_bold() { printf "\e[1;34m$*\e[0m\n" ; }
magenta_bold() { printf "\e[1;35m$*\e[0m\n" ; }
cyan_bold() { printf "\e[1;36m$*\e[0m\n" ; }
red_underlined() { printf "\e[4;31m$*\e[0m\n" ; }
green_underlined() { printf "\e[4;32m$*\e[0m\n" ; }
yellow_underlined() { printf "\e[4;33m$*\e[0m\n" ; }
blue_underlined() { printf "\e[4;34m$*\e[0m\n" ; }
magenta_underlined() { printf "\e[4;35m$*\e[0m\n" ; }
cyan_underlined() { printf "\e[4;36m$*\e[0m\n" ; }
