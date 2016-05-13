#################################################
# Will output text in a box surrounded by # signs
#################################################
banner()
{
	msg="# $* #"
	edge=$(echo "$msg" | sed 's/./#/g')
	echo "$edge"
	echo "$msg"
	echo "$edge"
}
