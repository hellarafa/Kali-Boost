#!/bin/bash

cme_bleeding_edge() {
	echo "Installing: CME Bleeding-Edge"
	    if [ ! -d "CrackMapExec" ]; then
		git clone https://github.com/byt3bl33d3r/CrackMapExec.git
		apt-get install -y libssl-dev libffi-dev python-dev build-essential
		(cd /opt/CrackMapExec && git submodule init && git submodule update --recursive)
		(cd /opt/CrackMapExec && python setup.py install)
		echo "DONE."
	    else
		echo "Found CME in /opt. Skipping..."
	    fi
	sleep 1
}

empire() {
	echo "Installing: Empire"
	    if [ ! -d "Empire" ]; then
		git clone https://github.com/EmpireProject/Empire.git
		echo "Done!" 
		read -p "Do you want to install Empire after this script finishes (y/n)? " choice1
		    case "$choice1" in
			y|Y ) installEmpire = true;;
			n|N ) echo "Skipping installation. Manually run install.sh in the EmpireProject folder to install.";;
			* ) echo "Skipping installation. Manually run install.sh in the EmpireProject folder to install.";;
		    esac
		#installs Empire
		if [ "$installEmpire" = true ]; then
			(cd Empire && ./setup/install.sh)
		fi
	    else
		if [ -d "Empire" ]; then
		    echo "Found Empire in /opt. Skipping installation."
		    read -p "Do you want to update instead (y/n)? " choice2
		    case "$choice2" in
			y|Y ) (cd /opt/Empire && git pull);;
			n|N ) echo "Not updating.";;
			* ) echo "Not updating.";;
		    esac
		fi
	    fi
	sleep 1
}

firefox_password_cracker() {
	echo "Installing: ffpasscracker"
	    if [ ! -d "ffpasscracker" ]; then
		git clone https://github.com/pradeep1288/ffpasscracker.git
	    else
		echo "Found ffpasscracker script in /opt. Skipping..."
	    fi
	sleep 1
}

eyewitness() {
	echo "Installing: EyeWitness"
	    if [ ! -d "EyeWitness" ]; then
		git clone https://github.com/ChrisTruncer/EyeWitness.git
		(cd /opt/EyeWitness/setup/ && ./setup.sh )
	    else
		echo "Found EyeWitness in /opt. Skipping..."
	    fi
	sleep 1
}

impacket_tools() {
	echo "Installing: impacket"
	    if [ ! -d "impacket" ]; then
		git clone https://github.com/CoreSecurity/impacket.git
		(cd impacket && python setup.py install)
	    else
		echo "Found impacket in /opt. Skipping..."
	    fi
	sleep 1
}

mimikittenz() {
	echo "Installing: mimikittenz"
	    if [ ! -d "mimikittenz" ]; then
		git clone https://github.com/putterpanda/mimikittenz.git
	    else
		echo "Found mimikittenz in /opt. Skipping..."
	    fi
	sleep 1
}

mimipenguin() {
	echo "Installing: mimipenguin"
	    if [ ! -d "mimipenguin" ]; then
		git clone https://github.com/huntergregal/mimipenguin.git
	    else
		echo "Found mimipenguin in /opt. Skipping..."
	    fi
	sleep 1
}

noSQLMap() {
	echo "Installing: NoSQLMap"
	    if [ ! -d "NoSQLMap" ]; then
		git clone https://github.com/codingo/NoSQLMap.git
	    else
		echo "Found mimipenguin in /opt. Skipping..."
	    fi
	sleep 1
}

masscan() {
	echo "Installing: Masscan"
	    if [ ! -d "masscan" ]; then
		git clone https://github.com/robertdavidgraham/masscan.git
		apt-get install -y git gcc make libpcap-dev
		(cd /opt/masscan && make -j && make install)
	    else
		echo "Found Masscan in /opt. Skipping..."
	    fi
	sleep 1
}

powershellPopup() {
	echo "Installing: PowerShell_Popup"
	    if [ ! -d "PowerShell_Popup" ]; then
		git clone https://github.com/cheetz/PowerShell_Popup.git
	    else
		echo "Found PowerShell Popup in /opt. Skipping..."
	    fi
	sleep 1
}

powersploit() {
	echo "Installing: PowerSploit"
	    if [ ! -d "PowerSploit" ]; then
		git clone https://github.com/PowerShellMafia/PowerSploit.git
	    else
		echo "Found PowerSploit in /opt. Skipping..."
	    fi
	sleep 1
}

firefox_password_cracker2() {
	echo "Installing: python-ffpassdecrypt"
	    if [ ! -d "python-ffpassdecrypt" ]; then
		git clone https://github.com/nyov/python-ffpassdecrypt.git
	    else
		echo "Found python-ffpassdecrypt in /opt. Skipping..."
	    fi
	sleep 1
}

rtfm() {
	echo "Installing: rtfm"
	    if [ ! -d "rtfm" ]; then
		git clone https://github.com/leostat/rtfm.git
		chmod +x /opt/rtfm/rtfm.py
	    else
		echo "Nice. You got the red team field manual."
	    fi
	sleep 1
}

seclists() {
	echo "Installing: SecLists"
	    if [ ! -d "SecLists" ]; then
		git clone https://github.com/danielmiessler/SecLists.git
	    else
		echo "Found Seclists in /opt. Skipping..."
	    fi
	sleep 1
}

wifite() {
	echo "Installing: wifite"
	    if [ ! -d "wifite" ]; then
		git clone https://github.com/derv82/wifite.git
	    else
		echo "Found wifite in /opt. Skipping..."
	    fi
	sleep 1
}

wifite2() {
	echo "Installing: wifite2"
	    if [ ! -d "wifite2" ]; then
		git clone https://github.com/derv82/wifite2.git
	    else
		echo "Found wifite2 in /opt. Skipping..."
	    fi
	sleep 1
}

nishang() {
	echo "Installing: nishang"
	    if [ ! -d "./nishang/" ]; then
		git clone https://github.com/samratashok/nishang.git 
	    else
		echo "Found nishang in /opt. Skipping..."
	    fi
	sleep 1
}

powershell() {
	echo "Installing: PowerShell"
	    if [ ! -d "PowerShell" ]; then
		git clone https://github.com/PowerShell/PowerShell.git
	    else
		echo "Found PowerShell in /opt. Skipping..."
	    fi
	sleep 1
}

worawitms17() {
	echo "Installing: Worawit's MS17-010"
	    if [ ! -d "MS17-010" ]; then
		git clone https://github.com/worawit/MS17-010.git
	    else
		echo "Found MS17-010 in /opt. Skipping..."
	    fi
	sleep 1
}

vulscan() {
	echo "Installing: Vulscan"
	    if [ ! -d "vulscan" ]; then
		git clone https://github.com/scipag/vulscan.git
		cp -r vulscan/ /usr/share/nmap/scripts/
	    else
		echo "Found vulscan in /opt. Skipping..."
	    fi
	sleep 1
}

vulners() {
	echo "Installing: Vulners"
	    if [ ! -d "nmap-vulners" ]; then
		git clone https://github.com/vulnersCom/nmap-vulners.git
		cp nmap-vulners/vulners.nse /usr/share/nmap/scripts/
	    else
		echo "Found Vulners Nmap Script in /opt. Skipping..."
	    fi
	sleep 1
}

credninja() {
	echo "Installing: CredNinja"
	    if [ ! -d "CredNinja" ]; then
		git clone https://github.com/Raikia/CredNinja.git
	    else
		echo "Found CredNinja in /opt. Skipping..."
	    fi
	sleep 1
}

elfStrings() {
	echo "Installing: ELF-Strings"
	    if [ ! -d "elf-strings" ]; then
		git clone https://github.com/LloydLabs/elf-strings
	    else
		echo "Found ELF-Strings in /opt. Skipping..."
	    fi
	sleep 1
}

dotdotslash() {
	echo "Installing: dotdotslash"
	    if [ ! -d "dotdotslash" ]; then
		git clone https://github.com/jcesarstef/dotdotslash.git
	    else
		echo "Found dotdotslash in /opt. Skipping..."
	    fi
	sleep 1
}

burp_vulners() {
	echo "Installing: burp-vulners-scanner"
	    if [ ! -d "burp-vulners-scanner" ]; then
		git clone https://github.com/vulnersCom/burp-vulners-scanner.git
		echo "Don't forget to manually install this module in Burp."
		sleep 3
	    else
		echo "Found burp-vulners-scanner in /opt. Skipping..."
	    fi
	sleep 1
}

whonow() {
	echo "Installing: whonow"
	    if [ ! -d "whonow" ]; then
		git clone https://github.com/brannondorsey/whonow.git
	    else
		echo "Found whonow in /opt. Skipping..."
	    fi
	sleep 1
}

windowsHacks() {
	echo "Installing: Windows-Hacks"
	    if [ ! -d "Windows-Hacks" ]; then
		git clone https://github.com/LazoCoder/Windows-Hacks.git
	    else
		echo "Found Windows-Hacks in /opt. Skipping..."
	    fi
	sleep 1
}

#TEMPLATE
#echo "Installing: ___"
#    if [ ! -d "___" ]; then
#        git clone https://github.com/___.git
#    else
#        echo "Found ___ in /opt. Skipping..."
#    fi
#sleep 1

banner() {
    # mandatory banner lol.
    echo ".##....##....###....##.......####"
    echo ".##...##....##.##...##........##."
    echo ".##..##....##...##..##........##."
    echo ".#####....##.....##.##........##."
    echo ".##..##...#########.##........##."
    echo ".##...##..##.....##.##........##."
    echo ".##....##.##.....##.########.####"
    echo "..######..########.########.##.....##.########."
    echo ".##....##.##..........##....##.....##.##.....##"
    echo ".##.......##..........##....##.....##.##.....##"
    echo "..######..######......##....##.....##.########."
    echo ".......##.##..........##....##.....##.##......."
    echo ".##....##.##..........##....##.....##.##......."
    echo "..######..########....##.....#######..##......."
    echo "..######...######..########..####.########..########"
    echo ".##....##.##....##.##.....##..##..##.....##....##..."
    echo ".##.......##.......##.....##..##..##.....##....##..."
    echo "..######..##.......########...##..########.....##..."
    echo ".......##.##.......##...##....##..##...........##..."
    echo ".##....##.##....##.##....##...##..##...........##..."
    echo "..######...######..##.....##.####.##...........##..."
    echo "=============================="
    echo "=== Kali Setup Script      ==="
    echo "=== Version: 1.1.0         ==="
    echo "=== Last Updated: 04-02-18 ==="
    echo "=== Made by @hellarafa <3  ==="
    echo "=============================="
    echo "" 
    echo -n "Starting script" && sleep .5
    echo -n "." && sleep 1
    echo -n "." && sleep 1
    echo -n "." && sleep 1 && echo ""
    echo ""
}

start() {
    banner
    cme_bleeding_edge
    empire
    firefox_password_cracker
    eyewitness
    impacket_tools
    mimikittenz
    mimipenguin
    noSQLMap
    masscan
    powershellPopup
    powersploit
    firefox_password_cracker2
    rtfm
    seclists
    wifite
    wifite2
    nishang
    powershell
    worawitms17
    vulscan
    vulners
    credninja
    elfStrings
    dotdotslash
    burp_vulners
    whonow
	
    #ADD
    wfuzz
    gobuster
    mimikatz
    https://github.com/gentilkiwi/mimikatz/releases

    #RED
    windowsHacks
    echo -e "\n DONE! Thanks. Come again!"
}
cd /opt
start
