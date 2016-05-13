# Declare STATIC variables
declare -r TRUE=0
declare -r FALSE=1

# Get script's directory path
SCRIPT_HOME_DIR=$(dirname ${BASH_SOURCE[0]})

# Modules to include
. $SCRIPT_HOME_DIR/modules/colors.sh
. $SCRIPT_HOME_DIR/modules/root.sh
. $SCRIPT_HOME_DIR/modules/status.sh
. $SCRIPT_HOME_DIR/modules/text.sh
