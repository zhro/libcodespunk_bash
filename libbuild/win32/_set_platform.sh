# LICENSE
# 
# The contents of this file are subject to the terms of the Mozilla Public
# License, version 2.0. If a copy of the MPL was not distributed with this
# file, you can obtain one at http://mozilla.org/MPL/.
# 
# Author: Matthew D'Onofrio (http://codespunk.com)

[[ $_H_CODESPUNK_WIN32_SET_PLATFORM ]] &&
   return
_H_CODESPUNK_WIN32_SET_PLATFORM=true

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

source "$CODESPUNK_HOME/bash/_lib_echo.sh" || exit 1
source "$CODESPUNK_HOME/bash/_lib_exception.sh" || exit 1

## ##

# Numberic platform equivalent
BUILD_PLATFORM_WINDOWS_3_1_N=31
BUILD_PLATFORM_WINDOWS_95_N=950
BUILD_PLATFORM_WINDOWS_98_N=980
BUILD_PLATFORM_WINDOWS_NT_3_1_N=528
BUILD_PLATFORM_WINDOWS_NT_3_5_N=807
BUILD_PLATFORM_WINDOWS_NT_3_51_N=1057
BUILD_PLATFORM_WINDOWS_NT_4_0_N=1381
BUILD_PLATFORM_WINDOWS_2000_N=2195
BUILD_PLATFORM_WINDOWS_2000_SP1_N=2195
BUILD_PLATFORM_WINDOWS_2000_SP2_N=2195
BUILD_PLATFORM_WINDOWS_2000_SP3_N=2195
BUILD_PLATFORM_WINDOWS_2000_SP4_N=2195
BUILD_PLATFORM_WINDOWS_XP_N=2600
BUILD_PLATFORM_WINDOWS_XP_SP1_N=2600
BUILD_PLATFORM_WINDOWS_XP_SP2_N=2600
BUILD_PLATFORM_WINDOWS_XP_SP3_N=2600
BUILD_PLATFORM_WINDOWS_WS03_N=3790
BUILD_PLATFORM_WINDOWS_WS03_SP1_N=3790
BUILD_PLATFORM_WINDOWS_WS03_SP2_N=3790
BUILD_PLATFORM_WINDOWS_VISTA_N=6000
BUILD_PLATFORM_WINDOWS_VISTA_SP1_N=6001
BUILD_PLATFORM_WINDOWS_VISTA_SP2_N=6002
BUILD_PLATFORM_WINDOWS_7_N=7600
BUILD_PLATFORM_WINDOWS_7_SP1_N=7601
BUILD_PLATFORM_WINDOWS_8_N=9200
BUILD_PLATFORM_WINDOWS_8_1_N=9600
BUILD_PLATFORM_WINDOWS_10_N=10240
BUILD_PLATFORM_WINDOWS_10_TH2_N=10586
BUILD_PLATFORM_WINDOWS_10_RS1_N=14393

BUILD_PLATFORM_WINDOWS_3_1=$BUILD_PLATFORM_WINDOWS_3_1_N
BUILD_PLATFORM_WINDOWS_95=$BUILD_PLATFORM_WINDOWS_95_N
BUILD_PLATFORM_WINDOWS_98=$BUILD_PLATFORM_WINDOWS_98_N
BUILD_PLATFORM_WINDOWS_NT_3_1=$BUILD_PLATFORM_WINDOWS_NT_3_1_N
BUILD_PLATFORM_WINDOWS_NT_3_5=$BUILD_PLATFORM_WINDOWS_NT_3_5_N
BUILD_PLATFORM_WINDOWS_NT_3_51=$BUILD_PLATFORM_WINDOWS_NT_3_51_N
BUILD_PLATFORM_WINDOWS_NT_4_0=$BUILD_PLATFORM_WINDOWS_NT_4_0_N
BUILD_PLATFORM_WINDOWS_2000=${BUILD_PLATFORM_WINDOWS_2000_N}_RTM
BUILD_PLATFORM_WINDOWS_2000_SP1=${BUILD_PLATFORM_WINDOWS_2000_N}_SP1
BUILD_PLATFORM_WINDOWS_2000_SP2=${BUILD_PLATFORM_WINDOWS_2000_N}_SP2
BUILD_PLATFORM_WINDOWS_2000_SP3=${BUILD_PLATFORM_WINDOWS_2000_N}_SP3
BUILD_PLATFORM_WINDOWS_2000_SP4=${BUILD_PLATFORM_WINDOWS_2000_N}_SP4
BUILD_PLATFORM_WINDOWS_XP=${BUILD_PLATFORM_WINDOWS_XP_N}_RTM
BUILD_PLATFORM_WINDOWS_XP_SP1=${BUILD_PLATFORM_WINDOWS_XP_N}_SP1
BUILD_PLATFORM_WINDOWS_XP_SP2=${BUILD_PLATFORM_WINDOWS_XP_N}_SP2
BUILD_PLATFORM_WINDOWS_XP_SP3=${BUILD_PLATFORM_WINDOWS_XP_N}_SP3
BUILD_PLATFORM_WINDOWS_WS03=${BUILD_PLATFORM_WINDOWS_WS03_N}_RTM
BUILD_PLATFORM_WINDOWS_WS03_SP1=${BUILD_PLATFORM_WINDOWS_WS03_N}_SP1
BUILD_PLATFORM_WINDOWS_WS03_SP2=${BUILD_PLATFORM_WINDOWS_WS03_N}_SP1
BUILD_PLATFORM_WINDOWS_VISTA=$BUILD_PLATFORM_WINDOWS_VISTA_N
BUILD_PLATFORM_WINDOWS_VISTA_SP1=$BUILD_PLATFORM_WINDOWS_VISTA_SP1_N
BUILD_PLATFORM_WINDOWS_VISTA_SP2=$BUILD_PLATFORM_WINDOWS_VISTA_SP2_N
BUILD_PLATFORM_WINDOWS_7=$BUILD_PLATFORM_WINDOWS_7_N
BUILD_PLATFORM_WINDOWS_7_SP1=$BUILD_PLATFORM_WINDOWS_7_SP1_N
BUILD_PLATFORM_WINDOWS_8=$BUILD_PLATFORM_WINDOWS_8_N
BUILD_PLATFORM_WINDOWS_8_1=$BUILD_PLATFORM_WINDOWS_8_1_N
BUILD_PLATFORM_WINDOWS_10=$BUILD_PLATFORM_WINDOWS_10_N
BUILD_PLATFORM_WINDOWS_10_TH2=$BUILD_PLATFORM_WINDOWS_10_TH2_N
BUILD_PLATFORM_WINDOWS_10_RS1=$BUILD_PLATFORM_WINDOWS_10_RS1_N

BUILD_PLATFORM_WINDOWS_3_1_MIN=$BUILD_PLATFORM_WINDOWS_3_1
BUILD_PLATFORM_WINDOWS_3_1_MAX=$BUILD_PLATFORM_WINDOWS_3_1
BUILD_PLATFORM_WINDOWS_95_MIN=$BUILD_PLATFORM_WINDOWS_95
BUILD_PLATFORM_WINDOWS_95_MAX=$BUILD_PLATFORM_WINDOWS_95
BUILD_PLATFORM_WINDOWS_98_MIN=$BUILD_PLATFORM_WINDOWS_98
BUILD_PLATFORM_WINDOWS_98_MAX=$BUILD_PLATFORM_WINDOWS_98
BUILD_PLATFORM_WINDOWS_NT_3_1_MIN=$BUILD_PLATFORM_WINDOWS_NT_3_1
BUILD_PLATFORM_WINDOWS_NT_3_1_MAX=$BUILD_PLATFORM_WINDOWS_NT_3_1
BUILD_PLATFORM_WINDOWS_NT_3_5_MIN=$BUILD_PLATFORM_WINDOWS_NT_3_5
BUILD_PLATFORM_WINDOWS_NT_3_5_MAX=$BUILD_PLATFORM_WINDOWS_NT_3_5
BUILD_PLATFORM_WINDOWS_NT_3_51_MIN=$BUILD_PLATFORM_WINDOWS_NT_3_51
BUILD_PLATFORM_WINDOWS_NT_3_51_MAX=$BUILD_PLATFORM_WINDOWS_NT_3_51
BUILD_PLATFORM_WINDOWS_NT_4_0_MIN=$BUILD_PLATFORM_WINDOWS_NT_4_0
BUILD_PLATFORM_WINDOWS_NT_4_0_MAX=$BUILD_PLATFORM_WINDOWS_NT_4_0
BUILD_PLATFORM_WINDOWS_2000_MIN=$BUILD_PLATFORM_WINDOWS_2000_RTM
BUILD_PLATFORM_WINDOWS_2000_MAX=$BUILD_PLATFORM_WINDOWS_2000_SP4
BUILD_PLATFORM_WINDOWS_XP_MIN=$BUILD_PLATFORM_WINDOWS_XP_RTM
BUILD_PLATFORM_WINDOWS_XP_MAX=$BUILD_PLATFORM_WINDOWS_XP_SP3
BUILD_PLATFORM_WINDOWS_WS03_MIN=$BUILD_PLATFORM_WINDOWS_WS03_RTM
BUILD_PLATFORM_WINDOWS_WS03_MAX=$BUILD_PLATFORM_WINDOWS_WS03_SP1
BUILD_PLATFORM_WINDOWS_VISTA_MIN=$BUILD_PLATFORM_WINDOWS_VISTA
BUILD_PLATFORM_WINDOWS_VISTA_MAX=$BUILD_PLATFORM_WINDOWS_VISTA_SP2
BUILD_PLATFORM_WINDOWS_7_MIN=$BUILD_PLATFORM_WINDOWS_7
BUILD_PLATFORM_WINDOWS_7_MAX=$BUILD_PLATFORM_WINDOWS_7_SP1
BUILD_PLATFORM_WINDOWS_8_MIN=$BUILD_PLATFORM_WINDOWS_8
BUILD_PLATFORM_WINDOWS_8_MAX=$BUILD_PLATFORM_WINDOWS_8
BUILD_PLATFORM_WINDOWS_8_1_MIN=$BUILD_PLATFORM_WINDOWS_8_1
BUILD_PLATFORM_WINDOWS_8_1_MAX=$BUILD_PLATFORM_WINDOWS_8_1
BUILD_PLATFORM_WINDOWS_10_MIN=$BUILD_PLATFORM_WINDOWS_10
BUILD_PLATFORM_WINDOWS_10_MAX=$BUILD_PLATFORM_WINDOWS_10_RS1

function _build_set_platform_r() {
   unset _WIN32_WINDOWS
   unset _WIN32_WINNT
   unset NTDDI_VERSION
   unset WINVER
   
   case $1 in
      $BUILD_PLATFORM_WINDOWS_3_1 ) # Windows 3.1          
         WINVER=0x30A
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_3_1_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_95 ) # Windows 95
         WINVER=0x400
         _WIN32_WINDOWS=0x400
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_95_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_98 ) # Windows 98
         WINVER=0x0400
         _WIN32_WINDOWS=0x410
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_98_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_NT_3_1 ) # Windows NT 3.1
         WINVER=0x0400
         _WIN32_WINNT=0x30A
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_NT_3_1_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_NT_3_5 ) # Windows NT 3.5
         WINVER=0x0400
         _WIN32_WINNT=0x350
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_NT_3_5_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_NT_3_51 ) # Windows NT 3.51
         WINVER=0x0400
         _WIN32_WINNT=0x0351
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_NT_3_51_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_NT_4_0 ) # Windows NT 4.0
         WINVER=0x400
         _WIN32_WINNT=0x400
         _WIN32_WINDOWS=0x410
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_NT_4_0_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_2000 ) # Windows 2000
         WINVER=0x500
         _WIN32_WINNT=0x500
         NTDDI_VERSION=0x05000000
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_2000_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_2000_SP1 ) # Windows 2000 SP1
         WINVER=0x500
         _WIN32_WINNT=0x500
         NTDDI_VERSION=0x05000100
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_2000_SP1_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_2000_SP2 ) # Windows 2000 SP2
         WINVER=0x500
         _WIN32_WINNT=0x500
         NTDDI_VERSION=0x05000200
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_2000_SP2_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_2000_SP3 ) # Windows 2000 SP3
         WINVER=0x500
         _WIN32_WINNT=0x500
         NTDDI_VERSION=0x05000300
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_2000_SP3_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_2000_SP4 ) # Windows 2000 SP4
         WINVER=0x500
         _WIN32_WINNT=0x500
         NTDDI_VERSION=0x05000400
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_2000_SP4_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_XP ) # Windows XP RTM
         WINVER=0x501
         _WIN32_WINNT=0x501
         NTDDI_VERSION=0x05010000
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_XP_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_XP_SP1 ) # Windows XP SP1
         WINVER=0x501
         _WIN32_WINNT=0x501
         NTDDI_VERSION=0x05010100
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_XP_SP1_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_XP_SP2 ) # Windows XP SP2
         WINVER=0x501
         _WIN32_WINNT=0x501
         NTDDI_VERSION=0x05010200
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_XP_SP2_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_XP_SP3 ) # Windows XP SP3
         WINVER=0x501
         _WIN32_WINNT=0x501
         NTDDI_VERSION=0x05010300
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_XP_SP3_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_WS03 ) # Windows XP x64/Server 2003
         WINVER=0x502
         _WIN32_WINNT=0x502
         NTDDI_VERSION=0x05020000
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_WS03_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_WS03_SP1 ) # Windows XP x64/Server 2003 SP2
         WINVER=0x502
         _WIN32_WINNT=0x502
         NTDDI_VERSION=0x05020100
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_WS03_SP1_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_WS03_SP2 ) # Windows XP x64/Server 2003 SP3
         WINVER=0x502
         _WIN32_WINNT=0x502
         NTDDI_VERSION=0x05020200
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_WS03_SP2_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_VISTA ) # Windows Vista RTM
         WINVER=0x600
         _WIN32_WINNT=0x600
         NTDDI_VERSION=0x06000000
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_VISTA_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_VISTA_SP1 ) # Windows Vista SP1/Server 2008
         WINVER=0x600
         _WIN32_WINNT=0x600
         NTDDI_VERSION=0x06000100
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_VISTA_SP1_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_VISTA_SP2 ) # Windows Vista SP2/Server 2008 SP2
         WINVER=0x600
         _WIN32_WINNT=0x600
         NTDDI_VERSION=0x06000200
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_VISTA_SP2_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_7 ) # Windows 7 RTM/Server 2008 R2/Home Server 2011
         WINVER=0x601
         _WIN32_WINNT=0x601
         NTDDI_VERSION=0x06010000
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_7_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_7_SP1 ) # Windows 7 SP1/Server 2008 R2 SP1
         WINVER=0x601
         _WIN32_WINNT=0x601
         NTDDI_VERSION=0x06010000
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_7_SP1_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_8 ) # Windows 8/Server 2012
         WINVER=0x602
         _WIN32_WINNT=0x602
         NTDDI_VERSION=0x06020000
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_8_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_8_1 ) # Windows 8.1/Server 2012 R2
         WINVER=0x603
         _WIN32_WINNT=0x603
         NTDDI_VERSION=0x06030000
         
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_8_1_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_10 ) # Windows 10 RTM/TH1
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_10_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_10_TH2 ) # Windows 10 TH2
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_10_TH2_N
      ;;
      
      $BUILD_PLATFORM_WINDOWS_10_RS1 ) # Windows 10 RS1/Server 2016
         BUILD_CONFIG_WIN32_PLATFORM_TARGET=$BUILD_PLATFORM_WINDOWS_10_RS1_N
      ;;
      
      *)
         _print_stacktrace_e "Invalid or unsupported platform target"
         
         return 1
   esac
   
   export _WIN32_WINDOWS
   export _WIN32_WINNT
   export BUILD_CONFIG_WIN32_PLATFORM_TARGET
   export NTDDI_VERSION
   export WINVER
}
