###########################################
# [Colors]
# source this-file.sh
# usage: e_success "Success text to echo here"
###########################################

# Colors
purple=$(tput setaf 171)
red=$(tput setaf 1)
green=$(tput setaf 76)
tan=$(tput setaf 3)
blue=$(tput setaf 38)

# Styles
bold=$(tput bold)
underline=$(tput sgr 0 1)
reset=$(tput sgr0)

e_header()
{
	printf "\n${bold}${purple}==========  %s  ==========${reset}\n" "$@"
}

e_arrow()
{
	printf "➜ $@\n"
}

e_success()
{
	printf "${green}✔ %s${reset}\n" "$@"
}

e_info()
{
	printf "${green}ℹ) %s${reset}\n" "$@"
}

e_error()
{
	printf "${red}✖ %s${reset}\n" "$@"
}

e_warning()
{
	printf "${tan}➜ %s${reset}\n" "$@"
}

e_underline()
{
	printf "${underline}${bold}%s${reset}\n" "$@"
}

e_bold()
{
	printf "${bold}%s${reset}\n" "$@"
}

e_note()
{
	printf "${underline}${bold}${blue}Note:${reset}  ${blue}%s${reset}\n" "$@"
}
