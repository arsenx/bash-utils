###########################################
# [Check for ROOT]
# usage: is_root
###########################################
function is_root() 
{
	[ $(id -u) -eq 0 ] && return $TRUE || return $FALSE
}

# Allow root only or throw error
function root_only()
{
	if ! is_root ;then
		e_error "You must be root"; exit 1
	fi
}
