# LICENSE
# 
# The contents of this file are subject to the terms of the Mozilla Public
# License, version 2.0. If a copy of the MPL was not distributed with this
# file, you can obtain one at http://mozilla.org/MPL/.
# 
# Author: Matthew D'Onofrio (http://codespunk.com)

[[ $_H_CODESPUNK_BASH_STRING ]] &&
   return
_H_CODESPUNK_BASH_STRING=true

[[ ! $CODESPUNK_HOME && -d "/usr/local/lib/codespunk/bash" ]] &&
   export CODESPUNK_HOME="/usr/local/lib/codespunk"

[[ $CODESPUNK_HOME ]] || {
>&2 cat << EOF
 A required environment variable is set to an invalid directory:
    CODESPUNK_HOME = "$CODESPUNK_HOME"
 
 Please configure your environment to include the location of your libcodespunk
 installation.
 
 If the required dependencies are not available from the package manager, they
 can be downloaded and installed directly from the following repository:
 
 $ git clone https://github.com/zhro/libcodespunk_bash.git
 $ cd libcodespunk_bash
 $ sudo make install
EOF
   
   exit 1
}

source "$CODESPUNK_HOME/bash/libstring/_str_field.sh" || exit 1
source "$CODESPUNK_HOME/bash/libstring/_str_trim.sh" || exit 1
source "$CODESPUNK_HOME/bash/libstring/_str_type_int.sh" || exit 1
