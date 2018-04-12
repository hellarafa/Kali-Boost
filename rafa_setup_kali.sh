#!/bin/bash
# VERSION 1.1.0

#################### Individual Tools
#  This section is where all the tools are. Each tool lives in a function
#  that is called from the call table below.
#

test() {
    echo -e $green"INSTALL: TEST"$reset
    :
    ret="$?"
    success "DANK"
    debug
    echo -e $red"Found tool in /opt. Skipping..."$reset
    skipmsg "Found tool in /opt. Skipping..."$reset
    sleep 1
}

cme_bleeding_edge() {
	echo -e $green"Installing: CME Bleeding-Edge"$reset
	    if [ ! -d "CrackMapExec" ]; then
		    git clone https://github.com/byt3bl33d3r/CrackMapExec.git
		    apt-get install -y libssl-dev libffi-dev python-dev build-essential
		    ret="$?"
            (cd /opt/CrackMapExec && git submodule init && git submodule update --recursive)
		    (cd /opt/CrackMapExec && python setup.py install)
		    success "Successfully installed CrackMapExec Bleeding Edge"
	    else
            skipmsg "Found CrackMapExec Bleeding-Edge in /opt. Skipping installation."
	    fi
    debug
	sleep 1
}

empire() {
	echo -e $green"Installing: Empire"$reset
	    if [ -d "Empire" ]; then
		    skipmsg "Found Empire in /opt. Skipping installation."
		    read -p "Do you want to update instead (y/n)? " choice2
		    case "$choice2" in
			    [yY]|[yYeEsS] ) (cd /opt/Empire && git pull)
                            ret="$?"
                            success "Successfully updated Empire."
                            ;;
			    [nN]|[nNoO] ) skipmsg "Not updating Empire.";;
			* ) skipmsg "Not updating Empire.";;
		    esac
	    fi
	    if [ ! -d "Empire" ]; then
		    git clone https://github.com/EmpireProject/Empire.git
		    read -p "Empire requires extra installation steps. Do you want to continue with the Empire install? (y/n)? " choice1
		    case "$choice1" in
			    [yY]|[yYeEsS] ) (cd Empire && ./setup/install.sh)
                            ret="$?"
                            success "Successfully installed Empire."
                            ;;
			   [nN]|[nNoO] ) skipmsg "Skipping installation. Manually run install.sh in the EmpireProject folder to install.";;
			* ) skipmsg "Skipping installation. Manually run install.sh in the EmpireProject folder to install.";;
		    esac
	    fi
        debug
	sleep 1
}

firefox_password_cracker() {
	echo -e $green"Installing: ffpasscracker"$reset
	    if [ ! -d "ffpasscracker" ]; then
		    git clone https://github.com/pradeep1288/ffpasscracker.git
	        ret="$?"
            success "Successfully installed ffpasscracker."
            debug
        else
		    skipmsg "Found ffpasscracker script in /opt. Skipping installation."
	    fi
	sleep 1
}

eyewitness() {
	echo -e $green"Installing: EyeWitness"$reset
	    if [ ! -d "EyeWitness" ]; then
		    git clone https://github.com/ChrisTruncer/EyeWitness.git
		    (cd /opt/EyeWitness/setup/ && ./setup.sh )
	        ret="$?"
            success "Successfully installed EyeWitness."
            debug
        else
		    skipmsg "Found EyeWitness in /opt. Skipping installation."
	    fi
	sleep 1
}

impacket_tools() {
	echo -e $green"Installing: Impacket"$reset
	    if [ ! -d "impacket" ]; then
		    git clone https://github.com/CoreSecurity/impacket.git
		    (cd impacket && python setup.py install)
	        ret="$?"
            success "Successfully installed Impacket."
            debug
        else
		   skipmsg "Found impacket in /opt. Skipping installation."
	    fi
	sleep 1
}

mimikittenz() {
	echo -e $green"Installing: mimikittenz"$reset
	    if [ ! -d "mimikittenz" ]; then
		git clone https://github.com/putterpanda/mimikittenz.git
	        ret="$?"
            success "Successfully installed mimikittenz."
            debug
        else
		    skipmsg "Found mimikittenz in /opt. Skipping installation."
	    fi
	sleep 1
}

mimipenguin() {
	echo -e $green"Installing: mimipenguin"$reset
	    if [ ! -d "mimipenguin" ]; then
		git clone https://github.com/huntergregal/mimipenguin.git
	    else
		echo -e $red"Found mimipenguin in /opt. Skipping..."$reset
	    fi
	sleep 1
}

noSQLMap() {
	echo -e $green"Installing: NoSQLMap"$reset
	    if [ ! -d "NoSQLMap" ]; then
		git clone https://github.com/codingo/NoSQLMap.git
	    else
		echo -e $red"Found mimipenguin in /opt. Skipping..."$reset
	    fi
	sleep 1
}

masscan() {
	echo -e $green"Installing: Masscan"$reset
	    if [ ! -d "masscan" ]; then
		git clone https://github.com/robertdavidgraham/masscan.git
		apt-get install -y git gcc make libpcap-dev
		(cd /opt/masscan && make -j && make install)
	    else
		echo -e $red"Found Masscan in /opt. Skipping..."$reset
	    fi
	sleep 1
}

powershellPopup() {
	echo -e $green"Installing: PowerShell_Popup"$reset
	    if [ ! -d "PowerShell_Popup" ]; then
		git clone https://github.com/cheetz/PowerShell_Popup.git
	    else
		echo -e $red"Found PowerShell Popup in /opt. Skipping..."$reset
	    fi
	sleep 1
}

powersploit() {
	echo -e $green"Installing: PowerSploit"$reset
	    if [ ! -d "PowerSploit" ]; then
		git clone https://github.com/PowerShellMafia/PowerSploit.git
	    else
		echo -e $red"Found PowerSploit in /opt. Skipping..."$reset
	    fi
	sleep 1
}

firefox_password_cracker2() {
	echo -e $green"Installing: python-ffpassdecrypt"$reset
	    if [ ! -d "python-ffpassdecrypt" ]; then
		git clone https://github.com/nyov/python-ffpassdecrypt.git
	    else
		echo -e $red"Found python-ffpassdecrypt in /opt. Skipping..."$reset
	    fi
	sleep 1
}

rtfm() {
	echo -e $green"Installing: rtfm"$reset
	    if [ ! -d "rtfm" ]; then
		git clone https://github.com/leostat/rtfm.git
		chmod +x /opt/rtfm/rtfm.py
	    else
		echo "Nice. You got the red team field manual."
	    fi
	sleep 1
}

seclists() {
	echo -e $green"Installing: SecLists"$reset
	    if [ ! -d "SecLists" ]; then
		git clone https://github.com/danielmiessler/SecLists.git
	    else
		echo -e $red"Found Seclists in /opt. Skipping..."$reset
	    fi
	sleep 1
}

wifite() {
	echo -e $green"Installing: wifite"$reset
	    if [ ! -d "wifite" ]; then
		git clone https://github.com/derv82/wifite.git
	    else
		echo -e $red"Found wifite in /opt. Skipping..."$reset
	    fi
	sleep 1
}

wifite2() {
	echo -e $green"Installing: wifite2"$reset
	    if [ ! -d "wifite2" ]; then
		git clone https://github.com/derv82/wifite2.git
	    else
		echo -e $red"Found wifite2 in /opt. Skipping..."$reset
	    fi
	sleep 1
}

nishang() {
	echo -e $green"Installing: nishang"$reset
	    if [ ! -d "./nishang/" ]; then
		git clone https://github.com/samratashok/nishang.git 
	    else
		echo -e $red"Found nishang in /opt. Skipping..."$reset
	    fi
	sleep 1
}

powershell() {
	echo -e $green"Installing: PowerShell"$reset
	    if [ ! -d "PowerShell" ]; then
		git clone https://github.com/PowerShell/PowerShell.git
	    else
		echo -e $red"Found PowerShell in /opt. Skipping..."$reset
	    fi
	sleep 1
}

worawitms17() {
	echo -e $green"Installing: Worawit's MS17-010"$reset
	    if [ ! -d "MS17-010" ]; then
		git clone https://github.com/worawit/MS17-010.git
	    else
		echo -e $red"Found MS17-010 in /opt. Skipping..."$reset
	    fi
	sleep 1
}

vulscan() {
	echo -e $green"Installing: Vulscan"$reset
	    if [ ! -d "vulscan" ]; then
		git clone https://github.com/scipag/vulscan.git
		cp -r vulscan/ /usr/share/nmap/scripts/
	    else
		echo -e $red"Found vulscan in /opt. Skipping..."$reset
	    fi
	sleep 1
}

vulners() {
	echo -e $green"Installing: Vulners"$reset
	    if [ ! -d "nmap-vulners" ]; then
		git clone https://github.com/vulnersCom/nmap-vulners.git
		cp nmap-vulners/vulners.nse /usr/share/nmap/scripts/
	    else
		echo -e $red"Found Vulners Nmap Script in /opt. Skipping..."$reset
	    fi
	sleep 1
}

credninja() {
	echo -e $green"Installing: CredNinja"$reset
	    if [ ! -d "CredNinja" ]; then
		git clone https://github.com/Raikia/CredNinja.git
	    else
		echo -e $red"Found CredNinja in /opt. Skipping..."$reset
	    fi
	sleep 1
}

elfStrings() {
	echo -e $green"Installing: ELF-Strings"$reset
	    if [ ! -d "elf-strings" ]; then
		git clone https://github.com/LloydLabs/elf-strings
	    else
		echo -e $red"Found ELF-Strings in /opt. Skipping..."$reset
	    fi
	sleep 1
}

dotdotslash() {
	echo -e $green"Installing: dotdotslash"$reset
	    if [ ! -d "dotdotslash" ]; then
		git clone https://github.com/jcesarstef/dotdotslash.git
	    else
		echo -e $red"Found dotdotslash in /opt. Skipping..."$reset
	    fi
	sleep 1
}

burp_vulners() {
	echo -e $green"Installing: burp-vulners-scanner"$reset
	    if [ ! -d "burp-vulners-scanner" ]; then
		git clone https://github.com/vulnersCom/burp-vulners-scanner.git
		echo "Don't forget to manually install this module in Burp."
		sleep 3
	    else
		echo -e $red"Found burp-vulners-scanner in /opt. Skipping..."$reset
	    fi
	sleep 1
}

whonow() {
	echo -e $green"Installing: whonow"$reset
	    if [ ! -d "whonow" ]; then
		git clone https://github.com/brannondorsey/whonow.git
	    else
		echo -e $red"Found whonow in /opt. Skipping..."$reset
	    fi
	sleep 1
}

wfuzz() {
	echo -e $green"Installing: wfuzz"$reset
	    if [ ! -d "wfuzz" ]; then
	       git clone https://github.com/xmendez/wfuzz.git
	    else
		echo -e $red"Found wfuzz in /opt. Skipping..."$reset
	    fi
	sleep 1
}

#################### REDTEAM EVIL STUFF
#  These scripts are malicious in nature and are usually not used
#  in Enterprise/Business engagements. Therefore, the function that
#  calls these is commented out but feel free to install them if you'd
#  like. CCDC people, feel free to use and/or contribute. ;-)

windowsHacks() {
    echo -e $green"Installing: Windows-Hacks"$reset
        if [ ! -d "Windows-Hacks" ]; then
        git clone https://github.com/LazoCoder/Windows-Hacks.git
        else
        echo -e $red"Found Windows-Hacks in /opt. Skipping..."$reset
        fi
    sleep 1
}

#################### TEMPLATE
#  if you want to add your own tool, just add this template code around
#  a function then add it to the call table below and you'll be good 
#  to go. Have fun.

#echo -e $green"Installing: ___"$reset
#    if [ ! -d "___" ]; then
#        git clone https://github.com/___.git
#        ret="$?"
#    else
#        echo -e $red"Found ___ in /opt. Skipping..."$reset
#    fi
#    success "Dank AF FAM"
#    debug

#sleep 1

banner() {
    # mandatory banner lol.
    echo -e $green".##....##....###....##.......####"$reset
    echo -e $green".##...##....##.##...##........##."$reset
    echo -e $green".##..##....##...##..##........##."$reset
    echo -e $green".#####....##.....##.##........##."$reset
    echo -e $green".##..##...#########.##........##."$reset
    echo -e $green".##...##..##.....##.##........##."$reset
    echo -e $green".##....##.##.....##.########.####"$reset
    echo -e $green"..######..########.########.##.....##.########."$reset
    echo -e $green".##....##.##..........##....##.....##.##.....##"$reset
    echo -e $green".##.......##..........##....##.....##.##.....##"$reset
    echo -e $green"..######..######......##....##.....##.########."$reset
    echo -e $green".......##.##..........##....##.....##.##......."$reset
    echo -e $green".##....##.##..........##....##.....##.##......."$reset
    echo -e $green"..######..########....##.....#######..##......."$reset
    echo -e $green"..######...######..########..####.########..########"$reset
    echo -e $green".##....##.##....##.##.....##..##..##.....##....##..."$reset
    echo -e $green".##.......##.......##.....##..##..##.....##....##..."$reset
    echo -e $green"..######..##.......########...##..########.....##..."$reset
    echo -e $green".......##.##.......##...##....##..##...........##..."$reset
    echo -e $green".##....##.##....##.##....##...##..##...........##..."$reset
    echo -e $green"..######...######..##.....##.####.##...........##..."$reset
    echo -e "=============================="
    echo -e "===$lightCyan Version:$reset$lightYellow 1.1.0         $reset==="
    echo -e "===$lightCyan Last Updated:$reset$lightYellow 04-05-18 $reset==="
    echo -e "===$lightCyan Made by @hellarafa <3  $reset==="
    echo -e "=============================="
    echo ""
}

#################### CALL TABLE & START
#  This is where the program starts. I call the section that follows the call table. If you 
#  comment out a line, that program does not get installed. Simple as that. As a default, all
#  tools are installed except the REDTEAM EVIL STUFF. You can install it if you'd like.

start() {
    banner
    cme_bleeding_edge #1
    empire #2
    firefox_password_cracker #3
    eyewitness #4
    impacket_tools #5
    mimikittenz #6
    mimipenguin #7
    noSQLMap #8
    masscan #9
    powershellPopup #10
    powersploit #11
    firefox_password_cracker2 #12
    rtfm #13
    seclists #14
    wifite #15
    wifite2 #16
    nishang #17
    powershell #18
    worawitms17 #19
    vulscan #20
    vulners #21
    credninja #22
    elfStrings #23
    dotdotslash #24
    burp_vulners #25
    whonow #26
    wfuzz #27 

    #ADD
    #mimikatz
    #peterkim's tools
    #https://github.com/gentilkiwi/mimikatz/releases

    #RED
    #windowsHacks
    echo -e "\n DONE! Thanks. Come again!"
}

#################### PROGRAM FUNCTIONS
# Functions that make the program run nicer.
#

msg() {
    printf '%b\n\n' "$1" >&2
}

success() {
    if [ "$ret" -eq '0' ]; then
        msg "\33[32m[✔]\33[0m ${1}${2}"
    fi
}

error() {
    msg "\33[31m[✘]\33[0m ${1}${2}"
    exit 1
}

skipmsg(){
    msg "\33[31m[✘]\33[0m ${1}${2}"
}

debug() {
    if [ "$debug_mode" -eq '1'  ] && [ "$ret" -gt '1'  ]; then
        msg "An error occurred in function \"${FUNCNAME[$i+1]}\" on line ${BASH_LINENO[$i+1]}, I'm sorry for that."
    fi
}


#################### SETUP PARAMETERS
# Just all the setup parameters, variables and stuff.
#
debug_mode='0'
readonly reset="\e[0m"
readonly red="\e[31m"
readonly green="\e[38;5;46m"
readonly lightYellow="\e[93m"
readonly lightCyan="\e[96m"
#readonly yellow="\e[33m"
#readonly blue="\e[34m"
#readonly magenta="\e[35m"
#readonly cyan="\e[36m"
#readonly lightBlue="\e[94m"
#readonly lightMagenta="\e[95m"

cd /opt
#start
banner
test
