# LICENSE
# 
# The contents of this file are subject to the terms of the Mozilla Public
# License, version 2.0. If a copy of the MPL was not distributed with this
# file, you can obtain one at http://mozilla.org/MPL/.
# 
# Author: Matthew D'Onofrio (http://codespunk.com)

__script_path=${BASH_SOURCE[0]%/*}

! [[ -f $__script_path ]] ||
   [[ $__script_path = */* ]] ||
      __script_path=.

pushd "$__script_path" 1>/dev/null
popd 1>/dev/null

__LIBSTRING_FIELD_EXAMPLE_SCRIPT_PATH=$OLDPWD

source "$__LIBSTRING_FIELD_EXAMPLE_SCRIPT_PATH/../_str_field.sh" || exit 1

# Expected result:
#  0 a--b--c--d
#  1 a
#  2 b
#  3 c
#  4 d
#  5 a--b--c--d
echo -n "0 "
_str_field_e 'a--b--c--d' '0' '--'
echo -n "1 "
_str_field_e 'a--b--c--d' '1' '--'
echo -n "2 "
_str_field_e 'a--b--c--d' '2' '--'
echo -n "3 "
_str_field_e 'a--b--c--d' '3' '--'
echo -n "4 "
_str_field_e 'a--b--c--d' '4' '--'
echo -n "5 "
_str_field_e 'a--b--c--d' '5' '--'

echo

# Expected result:
#  0 a--b--c--d
#  1 d
#  2 c
#  3 b
#  4 a
#  5 a--b--c--d
echo -n "0 "
_str_field_e 'a--b--c--d' '0' '--'
echo -n "1 "
_str_field_e 'a--b--c--d' '-1' '--'
echo -n "2 "
_str_field_e 'a--b--c--d' '-2' '--'
echo -n "3 "
_str_field_e 'a--b--c--d' '-3' '--'
echo -n "4 "
_str_field_e 'a--b--c--d' '-4' '--'
echo -n "5 "
_str_field_e 'a--b--c--d' '-5' '--'

echo

# Expected result:
#  This
#  is
#  a
#  split
#  string
#  This is a split string
for (( i=1; i<=6; i++ )); do
   _str_field_e "This is a split string" $i " "
done

echo

# Expected result:
#  string
#  split
#  a
#  is
#  This
#  This is a split string
for (( i=-1; i>=-6; i-- )); do
   _str_field_e "This is a split string" $i " "
done

echo

# Expected result is 'No match'
_str_field_e "No match" 1 "z"

# Expected result is 'No match'
_str_field_e "No match" 0 "z"

echo
echo ---
echo


# Expected result:
#  0 a--b--c--d
#  1 a
#  2 b
#  3 c
#  4 d
#  5 a--b--c--d
echo -n "0 "
r= _str_field_e 'a--b--c--d' '0' '--'; echo $_r
echo -n "1 "
r= _str_field_e 'a--b--c--d' '1' '--'; echo $_r
echo -n "2 "
r= _str_field_e 'a--b--c--d' '2' '--'; echo $_r
echo -n "3 "
r= _str_field_e 'a--b--c--d' '3' '--'; echo $_r
echo -n "4 "
r= _str_field_e 'a--b--c--d' '4' '--'; echo $_r
echo -n "5 "
r= _str_field_e 'a--b--c--d' '5' '--'; echo $_r

echo

# Expected result:
#  0 a--b--c--d
#  1 d
#  2 c
#  3 b
#  4 a
#  5 a--b--c--d
echo -n "0 "
r= _str_field_e 'a--b--c--d' '0' '--'; echo $_r
echo -n "1 "
r= _str_field_e 'a--b--c--d' '-1' '--'; echo $_r
echo -n "2 "
r= _str_field_e 'a--b--c--d' '-2' '--'; echo $_r
echo -n "3 "
r= _str_field_e 'a--b--c--d' '-3' '--'; echo $_r
echo -n "4 "
r= _str_field_e 'a--b--c--d' '-4' '--'; echo $_r
echo -n "5 "
r= _str_field_e 'a--b--c--d' '-5' '--'; echo $_r

echo

# Expected result:
#  This
#  is
#  a
#  split
#  string
#  This is a split string
for (( i=1; i<=6; i++ )); do
   r= _str_field_e "This is a split string" $i " "; echo $_r
done

echo

# Expected result:
#  string
#  split
#  a
#  is
#  This
#  This is a split string
for (( i=-1; i>=-6; i-- )); do
   r= _str_field_e "This is a split string" $i " "; echo $_r
done

echo

# Expected result is 'No match'
r= _str_field_e "No match" 1 "z"; echo $_r

# Expected result is 'No match'
r= _str_field_e "No match" 0 "z"; echo $_r
