# LICENSE
# 
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; either version 3 of the License, or (at your option) any later
# version.
# 
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details
# at http://www.gnu.org/copyleft/gpl.html
# 
# You should have received a copy of the GNU General Public License along with
# this program. If not, see http://www.gnu.org/licenses
# 
# Author: Matthew D'Onofrio (http://codespunk.com)

function _busybox() {
   ! [[ $__g_busybox_exists ]] &&
      return 1
   
   __g_busybox_exists=true
   
   [[ "$1" = --available ]] && [[ $__g_busybox_exists ]] &&
      return 0
   
   busybox "$@"
}

function _busybox_has() {
   builtin command -v busybox >/dev/null ||
      return 1

   # Sanitize searches for '[' and '[['
   a=$1
   a=${a//[/\\[}

   [[ $(busybox) =~ [[:space:]]($a)([,]|$) ]] ||
     return 1
}