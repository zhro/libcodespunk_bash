# LICENSE
# 
# The contents of this file are subject to the terms of the Mozilla Public
# License, version 2.0. If a copy of the MPL was not distributed with this
# file, you can obtain one at http://mozilla.org/MPL/.
# 
# Author: Matthew D'Onofrio (http://codespunk.com)

[[ $_H_CODESPUNK_BASH_SYSTEM_MKTEMP ]] &&
   return
_H_CODESPUNK_BASH_SYSTEM_MKTEMP=true

[[ $CODESPUNK_HOME ]] || {
>&2 echo ERROR: CODESPUNK_HOME is set to an invalid directory.
>&2 echo CODESPUNK_HOME = \"$CODESPUNK_HOME\"
>&2 echo Please set the CODESPUNK_HOME variable in your environment to match \
the location of your libcodespunk installation
}

source "$CODESPUNK_HOME/bash/_lib_busybox.sh" || exit 1

## ##

# COMMAND
#   _mktmp - wraps environment binary or busybox equivalent if available
#   
# USAGE
#   _mktmp ...
#   _mktmp --available
#   
function _mktemp() {
   ! [[ $__g_mktemp_exists ]] && {
      ! mktemp --help 2>/dev/null >/dev/null && {
         ! _busybox_has mktemp &&
            return 1
         
         __g_busybox_mktemp_exists=true
      }
      
      __g_mktemp_exists=true
   }
   
   [[ $1 = --available ]] && [[ $__g_mktemp_exists ]] &&
      return 0
   
   [[ $__g_busybox_mktemp_exists ]] &&
      busybox mktemp "$@"
   ||
      mktemp "$@"
}
