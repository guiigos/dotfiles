SRC=$(realpath "$(dirname "$0")")

source "${SRC}/functions.sh"

FILE="${SRC}/brew/install.sh"
chmod +x $FILE
. $FILE

FILE="${SRC}/tools/sdkman/install.sh"
chmod +x $FILE
. $FILE

FILE="${SRC}/tools/ohmyzsh/install.sh"
chmod +x $FILE
. $FILE

FILE="${SRC}/symlink/install.sh"
chmod +x $FILE
. $FILE

gh auth login
glab auth login
heroku login
