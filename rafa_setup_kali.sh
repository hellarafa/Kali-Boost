#!/bin/bash
# VERSION 1.1.0

cme_bleeding_edge() {
	echo -e $green"Installing: CME Bleeding-Edge"$reset
	    if [ ! -d "CrackMapExec" ]; then
		git clone https://github.com/byt3bl33d3r/CrackMapExec.git
		apt-get install -y libssl-dev libffi-dev python-dev build-essential
		(cd /opt/CrackMapExec && git submodule init && git submodule update --recursive)
		(cd /opt/CrackMapExec && python setup.py install)
		echo "DONE."
	    else
		echo -e $red"Found CME in /opt. Skipping..."$reset
	    fi
	sleep 1
}

empire() {
	echo -e $green"Installing: Empire"$reset
	    if [ -d "Empire" ]; then
		    echo "Found Empire in /opt. Skipping installation."
		    read -p "Do you want to update instead (y/n)? " choice2
		    case "$choice2" in
			[yY]|[yYeEsS] ) (cd /opt/Empire && git pull);;
			[nN]|[nNoO] ) echo "Not updating.";;
			* ) echo "Not updating.";;
		    esac
	     fi
	     if [ ! -d "Empire" ]; then
		git clone https://github.com/EmpireProject/Empire.git
		echo "Done!"
		read -p "Empire requires extra installation steps. Do you want to continue with the Empire install? (y/n)? " choice1
		    case "$choice1" in
			[yY]|[yYeEsS] ) (cd Empire && ./setup/install.sh);;
			[nN]|[nNoO] ) echo "Skipping installation. Manually run install.sh in the EmpireProject folder to install.";;
			* ) echo "Skipping installation. Manually run install.sh in the EmpireProject folder to install.";;
		    esac
	     fi
	sleep 1
}

firefox_password_cracker() {
	echo -e $green"Installing: ffpasscracker"$reset
	    if [ ! -d "ffpasscracker" ]; then
		git clone https://github.com/pradeep1288/ffpasscracker.git
	    else
		echo -e $red"Found ffpasscracker script in /opt. Skipping..."$reset
	    fi
	sleep 1
}

eyewitness() {
	echo -e $green"Installing: EyeWitness"$reset
	    if [ ! -d "EyeWitness" ]; then
		git clone https://github.com/ChrisTruncer/EyeWitness.git
		(cd /opt/EyeWitness/setup/ && ./setup.sh )
	    else
		echo -e $red"Found EyeWitness in /opt. Skipping..."$reset
	    fi
	sleep 1
}

impacket_tools() {
	echo -e $green"Installing: impacket"$reset
	    if [ ! -d "impacket" ]; then
		git clone https://github.com/CoreSecurity/impacket.git
		(cd impacket && python setup.py install)
	    else
		echo -e $red"Found impacket in /opt. Skipping..."$reset
	    fi
	sleep 1
}

mimikittenz() {
	echo -e $green"Installing: mimikittenz"$reset
	    if [ ! -d "mimikittenz" ]; then
		git clone https://github.com/putterpanda/mimikittenz.git
	    else
		echo -e $red"Found mimikittenz in /opt. Skipping..."$reset
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

windowsHacks() {
	echo -e $green"Installing: Windows-Hacks"$reset
	    if [ ! -d "Windows-Hacks" ]; then
		git clone https://github.com/LazoCoder/Windows-Hacks.git
	    else
		echo -e $red"Found Windows-Hacks in /opt. Skipping..."$reset
	    fi
	sleep 1
}

#TEMPLATE
#echo -e $green"Installing: ___"$reset
#    if [ ! -d "___" ]; then
#        git clone https://github.com/___.git
#    else
#        echo -e $red"Found ___ in /opt. Skipping..."$reset
#    fi
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
    echo -e "===$lightCyan Kali Setup Script      $reset==="
    echo -e "===$lightCyan Version:$reset$lightYellow 1.1.0         $reset==="
    echo -e "===$lightCyan Last Updated:$reset$lightYellow 04-05-18 $reset==="
    echo -e "===$lightCyan Made by @hellarafa <3  $reset==="
    echo -e "=============================="
    echo ""
}

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
    #gobuster
    #mimikatz
    #https://github.com/gentilkiwi/mimikatz/releases

    #RED
    #windowsHacks
    echo -e "\n DONE! Thanks. Come again!"
}

#set the colors up.
readonly reset="\e[0m"
readonly red="\e[31m"
#readonly yellow="\e[33m"
#readonly blue="\e[34m"
#readonly magenta="\e[35m"
#readonly cyan="\e[36m"
readonly green="\e[38;5;46m"
readonly lightYellow="\e[93m"
#readonly lightBlue="\e[94m"
#readonly lightMagenta="\e[95m"
readonly lightCyan="\e[96m"

cd /opt
start

