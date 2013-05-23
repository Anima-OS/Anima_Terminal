#!/bin/bash
# gvi: a GraphTerm shell wrapper for editing files
# Usage: gvi <filename>

options=""
file=""
editor=""
for arg in $*; do
   if [ "$arg" == "--ace" ]; then
      editor="ace"
   elif [ "$arg" == "--ckeditor" ]; then
      editor="ckeditor"
   elif [[ "$arg" == -* ]]; then
      options="$options $arg"
   else
      file="$arg"
   fi
done

if [ "$file" == "" ]; then
    echo "Usage: gvi [--ace|--ckeditor] <filename>"
    exit 1
fi

if [[ "$file" == /* ]]; then
    # Absolute path
    file="$file"
else
    # Relative path
    file="$PWD/$file"
fi

tailname=$(basename "$file")
filename="${tailname%.*}"
extension="${tailname##*.}"

echocmd1="echo -n"
##echocmd1="/bin/echo -e"
echocmd2="echo"

headers='{"content_type": "text/html", "x_gterm_response": "edit_file", "x_gterm_parameters": {"filepath": "'"${file}"'", "editor": "'"${editor}"'", "modify": "true", "command": "", "current_directory": "'"${PWD}"'"}}'

esc=`printf "\033"`
nl=`printf "\012"`
cr=`printf "\015"`
gterm_code="1155"
gterm_cookie=${GTERM_COOKIE:-${LC_GTERM_COOKIE}}
$echocmd1 "${esc}[?${gterm_code};${gterm_cookie}h"

$echocmd1 "$headers"
$echocmd2 ""
$echocmd2 ""
$echocmd1 "${esc}[?${gterm_code}l"
echo
