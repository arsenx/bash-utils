###########################################
# [Check for user]
# usage: user_exists "vivek"
###########################################
function user_exists()
{
    grep -q "^${1}" /etc/passwd && return $TRUE || return $FALSE
}

###########################################
# [Check if pid is running]
# usage: pid_running pid
###########################################
function pid_running()
{
	if [ -z $1 ]; then
		e_error "Please provide a PID"; exit 1
	else
		ps -p ${1} --no-headers > /dev/null && return $TRUE || return $FALSE
	fi
}

###########################################
# [Check if program exists]
# usage: app_exists "appName"
###########################################
function app_exists()
{
	if [ -z $1 ]; then
		e_error "Please provide an app name"; exit 1
	else
		which $1 > /dev/null && return $TRUE || return $FALSE
	fi
}
