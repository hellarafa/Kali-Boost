#!/bin/bash

# This is my custom script to setup kali to my liking.
# It just downloads/installs tools and puts them in the opt folder.

# mandatory banner lol.

#just in case.

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
echo "========================="
echo "=== Kali Setup Script ==="
echo "=== Version: 1.0.1    ==="
echo "=== Made by Rafa <3   ==="
echo "========================="
echo "" 
echo -n "Starting script" && sleep .5
echo -n "." && sleep 1
echo -n "." && sleep 1
echo -n "." && sleep 1 && echo ""
echo ""
cd /opt

echo "Installing: CME Bleeding-Edge"
    if [ ! -d "CrackMapExec" ]; then
        git clone https://github.com/byt3bl33d3r/CrackMapExec.git
        apt-get install -y libssl-dev libffi-dev python-dev build-essential
        (cd /opt/CrackMapExec && git submodule init && git submodule update --recursive)
        python /opt/CrackMapExec/setup.py install
        echo "DONE."
    else
        echo "Found CME in /opt. Skipping..."
    fi
sleep 1

echo "Installing: Empire"
    if [ ! -d "Empire" ]; then
        git clone https://github.com/EmpireProject/Empire.git
        echo "Done!" 
	read -p "Do you want to install Empire after this script finishes (y/n)? " choice1
            case "$choice1" in
                y|Y ) installEmpire = true;;
                n|N ) echo "Skipping installation. Manually run install.sh to install.";;
                * ) echo "Skipping installation. Manually run install.sh to install.";;
            esac
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

echo "Installing: ffpasscracker"
    if [ ! -d "ffpasscracker" ]; then
        git clone https://github.com/pradeep1288/ffpasscracker.git
    else
        echo "Found ffpasscracker script in /opt. Skipping..."
    fi
sleep 1

echo "Installing: EyeWitness"
    if [ ! -d "EyeWitness" ]; then
        git clone https://github.com/ChrisTruncer/EyeWitness.git
        (cd /opt/EyeWitness/setup/ && ./setup.sh )
    else
        echo "Found EyeWitness in /opt. Skipping..."
    fi
sleep 1

echo "Installing: impacket"
    if [ ! -d "impacket" ]; then
        git clone https://github.com/CoreSecurity/impacket.git
    else
        echo "Found impacket in /opt. Skipping..."
    fi
sleep 1

echo "Installing: mimikittenz"
    if [ ! -d "mimikittenz" ]; then
        git clone https://github.com/putterpanda/mimikittenz.git
    else
        echo "Found mimikittenz in /opt. Skipping..."
    fi
sleep 1

echo "Installing: mimipenguin"
    if [ ! -d "mimipenguin" ]; then
        git clone https://github.com/huntergregal/mimipenguin.git
    else
        echo "Found mimipenguin in /opt. Skipping..."
    fi
sleep 1

echo "Installing: NoSQLMap"
    if [ ! -d "NoSQLMap" ]; then
        git clone https://github.com/codingo/NoSQLMap.git
    else
        echo "Found mimipenguin in /opt. Skipping..."
    fi
sleep 1

echo "Installing: Masscan"
    if [ ! -d "masscan" ]; then
        git clone https://github.com/robertdavidgraham/masscan.git
	apt-get install -y git gcc make libpcap-dev
	(cd /opt/masscan && make -j && make install)
    else
        echo "Found Masscan in /opt. Skipping..."
    fi
sleep 1

echo "Installing: PowerShell_Popup"
    if [ ! -d "PowerShell_Popup" ]; then
        git clone https://github.com/cheetz/PowerShell_Popup.git
    else
        echo "Found PowerShell Popup in /opt. Skipping..."
    fi
sleep 1

echo "Installing: PowerSploit"
    if [ ! -d "PowerSploit" ]; then
        git clone https://github.com/PowerShellMafia/PowerSploit.git
    else
        echo "Found PowerSploit in /opt. Skipping..."
    fi
sleep 1

echo "Installing: python-ffpassdecrypt"
    if [ ! -d "python-ffpassdecrypt" ]; then
        git clone https://github.com/nyov/python-ffpassdecrypt.git
    else
        echo "Found python-ffpassdecrypt in /opt. Skipping..."
    fi
sleep 1

echo "Installing: rtfm"
    if [ ! -d "rtfm" ]; then
        git clone https://github.com/leostat/rtfm.git
        chmod +x /opt/rtfm/rtfm.py
    else
        echo "Nice. You got the red team field manual."
    fi
sleep 1

echo "Installing: SecLists"
    if [ ! -d "SecLists" ]; then
        git clone https://github.com/danielmiessler/SecLists.git
    else
        echo "Found Seclists in /opt. Skipping..."
    fi
sleep 1

echo "Installing: wifite"
    if [ ! -d "wifite" ]; then
        git clone https://github.com/derv82/wifite.git
    else
        echo "Found wifite in /opt. Skipping..."
    fi
sleep 1

echo "Installing: wifite2"
    if [ ! -d "wifite2" ]; then
        git clone https://github.com/derv82/wifite2.git
    else
        echo "Found wifite2 in /opt. Skipping..."
    fi
sleep 1

echo "Installing: nishang"
    if [ ! -d "./nishang/" ]; then
        git clone https://github.com/samratashok/nishang.git 
    else
        echo "Found nishang in /opt. Skipping..."
    fi
sleep 1

echo "Installing: Windows-Hacks"
    if [ ! -d "Windows-Hacks" ]; then
        git clone https://github.com/LazoCoder/Windows-Hacks.git
    else
        echo "Found Windows-Hacks in /opt. Skipping..."
    fi
sleep 1

echo "Installing: PowerShell"
    if [ ! -d "PowerShell" ]; then
        git clone https://github.com/PowerShell/PowerShell.git
    else
        echo "Found PowerShell in /opt. Skipping..."
    fi
sleep 1

if [ "$installEmpire" = true ]; then
#installs Empire
	(cd Empire && ./setup/install.sh)
fi      

echo ""
echo "DONE! Thanks. Come again!"
