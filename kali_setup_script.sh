#!/bin/bash
#version
v="1.1.0_DEV"

#################### ABOUT
#
#  Made by Rafa.
#  Github: @hellarafa
#  This script installs tools not found in Kali and updated versions of pre-existing
#  tools. I don't own any of the tools listed below. 
#

usage() {
    echo -e "#########################################################\n"
    echo -e "Usage: kali-setup-script.sh [-args]\n"
    echo "     OPTIONS:"
    echo "     -s     Start the installation."
    echo "     -r     Install ONLY the red team scripts."
    echo "     -e     Install EVERYTHING."
    echo "     -v     Be verbose."
    echo "     -b     Show the banner."
    echo "     -h     Show this help screen."
    echo -e "\n#########################################################"
}

#################### START
#
#  This is where the program starts. I call the section that follows the call table. If you 
#  comment out a line, that program does not get installed. Simple as that. As a default, all
#  tools are installed. 

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
    worawitms17 #18
    vulscan #19
    vulners #20
    credninja #21
    elfStrings #22
    dotdotslash #23
    burp_vulners #24
    whonow #25
    wfuzz #26
    probableWordlists #27
    linEnum #28
    meterssh #29
    sigThief #30
    veilFramework #31

    #ADD LATER
    #mimikatz trunk
    #https://github.com/gentilkiwi/mimikatz/releases/latest
}

finished() {
    echo -e $lightCyan"\nFinished installing all of the tools! Have a great day."$reset
}

redteam() {
    windowsHacks #1
    backdoorFactory #2
}

sigThief() {
    echo -e $green"Installing: SigThief"$reset
    if [ ! -d "SigThief" ]; then
        if [ "$verbose" = '0' ]; then
            git clone https://github.com/secretsquirrel/SigThief.git &> /dev/null
        elif [ "$verbose" = '1' ]; then
            git clone https://github.com/secretsquirrel/SigThief.git
        else
           :
        fi
        ret="$?"
        success "Successfully installed SigThief."
        debug
    else
        skipmsg "Found SigThief in /opt. Skipping installation."
    fi
    sleep 1
}

meterssh() {
     echo -e $green"Installing: MeterSSH"$reset
    if [ ! -d "meterssh" ]; then
        if [ "$verbose" = '0' ]; then
            git clone https://github.com/trustedsec/meterssh.git &> /dev/null
        elif [ "$verbose" = '1' ]; then
            git clone https://github.com/trustedsec/meterssh.git
        else
            :
        fi
        ret="$?"
        success "Successfully installed MeterSSH."
        debug
    else
        skipmsg "Found MeterSSH in /opt. Skipping installation."
    fi
    sleep 1
}

linEnum() {
    echo -e $green"Installing: LinEnum"$reset
    if [ ! -d "LinEnum" ]; then
        if [ "$verbose" = '0' ]; then
            git clone https://github.com/cheetz/LinEnum.git &> /dev/null
        elif [ "$verbose" = '1' ]; then
            git clone https://github.com/cheetz/LinEnum.git
        else
            :
        fi
        ret="$?"
        success "Successfully installed LinEnum."
        debug
    else
        skipmsg "Found LinEnum in /opt. Skipping installation."
    fi
    sleep 1
}

cme_bleeding_edge() {
    echo -e $green"Installing: CME Bleeding-Edge"$reset
        if [ ! -d "CrackMapExec" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/byt3bl33d3r/CrackMapExec.git &> /dev/null
                apt-get install -y libssl-dev libffi-dev python-dev build-essential &> /dev/null
                (cd /opt/CrackMapExec && git submodule init && git submodule update --recursive) &> /dev/null
                (cd /opt/CrackMapExec && python setup.py install) &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/byt3bl33d3r/CrackMapExec.git
                apt-get install -y libssl-dev libffi-dev python-dev build-essential
                (cd /opt/CrackMapExec && git submodule init && git submodule update --recursive)
                (cd /opt/CrackMapExec && python setup.py install)
            else
                :
            fi
            ret="$?"
            success "Successfully installed CrackMapExec Bleeding Edge"
            debug
        else
            skipmsg "Found CrackMapExec Bleeding-Edge in /opt. Skipping installation."
        fi
    sleep 1
}

empire() {
    if [ -d "Empire" ]; then
        skipmsg "Found Empire in /opt. Skipping installation."
        read -p "Do you want to update instead (y/n)? " choice2
        if [ "$verbose" = '0' ]; then
            case "$choice2" in
                [yY]|[yYeEsS] ) (cd /opt/Empire && git pull) &> /dev/null
                    ret="$?"
                    success "Successfully updated Empire."
                    debug
                    ;;
                [nN]|[nNoO] ) skipmsg "Not updating Empire.";;
                * ) skipmsg "Not updating Empire.";;
            esac
        elif [ "$verbose" = '1' ]; then
            case "$choice2" in
                [yY]|[yYeEsS] ) (cd /opt/Empire && git pull)
                    ret="$?"
                    success "Successfully updated Empire."
                    debug
                    ;;
                [nN]|[nNoO] ) skipmsg "Not updating Empire.";;
                * ) skipmsg "Not updating Empire.";;
            esac
        else
            :
        fi
    fi
        if [ ! -d "Empire" ]; then
            echo -e $green"Installing: Empire"$reset
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/EmpireProject/Empire.git &> /dev/null
                (cd Empire && echo '\r' | ./setup/install.sh) &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/EmpireProject/Empire.git
                (cd Empire && ./setup/install.sh)
            else
                :
            fi
            ret="$?"
            success "Successfully installed Empire."
            debug
        fi
    sleep 1
}

firefox_password_cracker() {
	echo -e $green"Installing: ffpasscracker"$reset
	    if [ ! -d "ffpasscracker" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/pradeep1288/ffpasscracker.git &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/pradeep1288/ffpasscracker.git
            else
                :
            fi
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
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/ChrisTruncer/EyeWitness.git &> /dev/null
                (cd /opt/EyeWitness/setup/ && ./setup.sh) &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/ChrisTruncer/EyeWitness.git
                (cd /opt/EyeWitness/setup/ && ./setup.sh)
            else
                :
            fi
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
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/CoreSecurity/impacket.git &> /dev/null
                (cd impacket && python setup.py install) &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/CoreSecurity/impacket.git
                (cd impacket && python setup.py install)
            else
                :
            fi
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
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/putterpanda/mimikittenz.git &> /dev/null
            elif [ "$verbose" = '1' ]; then
		        git clone https://github.com/putterpanda/mimikittenz.git
            else
                :
            fi
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
            if [ "$verbose" = '0' ]; then
		        git clone https://github.com/huntergregal/mimipenguin.git &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/huntergregal/mimipenguin.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed mimipenguin."
            debug
        else
		    skipmsg "Found mimipenguin in /opt. Skipping installation."
	    fi
	sleep 1
}

noSQLMap() {
	echo -e $green"Installing: NoSQLMap"$reset
	    if [ ! -d "NoSQLMap" ]; then
		    if [ "$verbose" = '0' ]; then
                git clone https://github.com/codingo/NoSQLMap.git &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/codingo/NoSQLMap.git
            else
                :
            fi
	        ret="$?"
            success "Successfully installed NoSQLMap."
            debug
        else
	        skipmsg "Found mimipenguin in /opt. Skipping installation."
	    fi
	sleep 1
}

masscan() {
	echo -e $green"Installing: Masscan"$reset
	    if [ ! -d "masscan" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/robertdavidgraham/masscan.git &> /dev/null
                apt-get install -y git gcc make libpcap-dev &> /dev/null
                (cd /opt/masscan && make -j && make install) &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/robertdavidgraham/masscan.git
                apt-get install -y git gcc make libpcap-dev
                (cd /opt/masscan && make -j && make install)
            else
                :
            fi
            ret="$?"
            success "Successfully installed Masscan."
            debug
        else
            skipmsg "Found Masscan in /opt. Skipping installation."
	    fi
	sleep 1
}

powershellPopup() {
	echo -e $green"Installing: PowerShell_Popup"$reset
	    if [ ! -d "PowerShell_Popup" ]; then
	        if [ "$verbose" = '0' ]; then
                git clone https://github.com/cheetz/PowerShell_Popup.git &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/cheetz/PowerShell_Popup.git
            else
                :
            fi
	        ret="$?"
            success "Successfully installed PowerShell_Popup."
            debug
        else
	        skipmsg "Found PowerShell Popup in /opt. Skipping installation."
	    fi
	sleep 1
}

powersploit() {
	echo -e $green"Installing: PowerSploit"$reset
	    if [ ! -d "PowerSploit" ]; then
            if [ "$verbose" = '0' ]; then
	            git clone https://github.com/PowerShellMafia/PowerSploit.git &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/PowerShellMafia/PowerSploit.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed PowerSploit."
            debug
        else
	        skipmsg "Found PowerSploit in /opt. Skipping installation."
	    fi
	sleep 1
}

firefox_password_cracker2() {
	echo -e $green"Installing: python-ffpassdecrypt"$reset
	    if [ ! -d "python-ffpassdecrypt" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/nyov/python-ffpassdecrypt.git &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/nyov/python-ffpassdecrypt.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed python-ffpassdecrypt."
            debug
	    else
            skipmsg "Found python-ffpassdecrypt in /opt. Skipping installation."
	    fi
	sleep 1
}

rtfm() {
	echo -e $green"Installing: rtfm"$reset
        if [ ! -d "rtfm" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/leostat/rtfm.git &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/leostat/rtfm.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed rtfm."
            debug
	        chmod +x /opt/rtfm/rtfm.py
	    else
	        skipmsg "Found rftm in /opt. Skipping installation."
	    fi
	sleep 1
}

seclists() {
	echo -e $green"Installing: SecLists"$reset
	    if [ ! -d "SecLists" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/danielmiessler/SecLists.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
	            git clone https://github.com/danielmiessler/SecLists.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed SecLists."
            debug
        else
	        skipmsg "Found Seclists in /opt. Skipping installation."
	    fi
	sleep 1
}

wifite() {
	echo -e $green"Installing: wifite"$reset
	    if [ ! -d "wifite" ]; then
	        if [ "$verbose" = '0' ]; then
                git clone https://github.com/derv82/wifite.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/derv82/wifite.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed wifite."
            debug
        else
	        skipmsg "Found wifite in /opt. Skipping installation."
	    fi
	sleep 1
}

wifite2() {
	echo -e $green"Installing: wifite2"$reset
	    if [ ! -d "wifite2" ]; then
	        if [ "$verbose" = '0' ]; then
                git clone https://github.comn/derv82/wifite2.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/derv82/wifite2.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed wifite2."
            debug
        else
	        skipmsg "Found wifite2 in /opt. Skipping installation."
	    fi
	sleep 1
}

nishang() {
	echo -e $green"Installing: nishang"$reset
	    if [ ! -d "./nishang/" ]; then
	        if [ "$verbose" = '0' ]; then
                git clone https://github.com/samratashok/nishang.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/samratashok/nishang.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed nishang."
            debug
        else
	        skipmsg "Found nishang in /opt. Skipping installation."
	    fi
	sleep 1
}

worawitms17() {
	echo -e $green"Installing: Worawit's MS17-010"$reset
	    if [ ! -d "MS17-010" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/worawit/MS17-010.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/worawit/MS17-010.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed Worawit's MS17-010."
            debug
        else
	        skipmsg "Found MS17-010 in /opt. Skipping installation."
	    fi
	sleep 1
}

vulscan() {
	echo -e $green"Installing: Vulscan"$reset
	    if [ ! -d "vulscan" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/scipag/vulscan.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/scipag/vulscan.git
            else 
                :
            fi
            ret="$?"
            cp -r vulscan/ /usr/share/nmap/scripts/
	        success "Successfully installed Vulscan. Find it in your nmap scripts."
            debug
        else
	        skipmsg "Found vulscan in /opt. Skipping installation."
	    fi
	sleep 1
}

vulners() {
	echo -e $green"Installing: Vulners"$reset
	    if [ ! -d "nmap-vulners" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/vulnersCom/nmap-vulners.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/vulnersCom/nmap-vulners.git
            else
                :
            fi
            ret="$?"
	        cp nmap-vulners/vulners.nse /usr/share/nmap/scripts/
	        success "Successfully installed Vulners. Find it in your nmap scripts."
            debug
        else
	        skipmsg "Found Vulners Nmap Script in /opt. Skipping installation."
	    fi
	sleep 1
}

credninja() {
	echo -e $green"Installing: CredNinja"$reset
	    if [ ! -d "CredNinja" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/Raikia/CredNinja.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/Raikia/CredNinja.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed CredNinja."
            debug
        else
	        skipmsg "Found CredNinja in /opt. Skipping installation."
	    fi
	sleep 1
}

elfStrings() {
	echo -e $green"Installing: ELF-Strings"$reset
	    if [ ! -d "elf-strings" ]; then
	        if [ "$verbose" = '0' ]; then
                git clone https://github.com/LloydLabs/elf-strings &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/LloydLabs/elf-strings
            else
                :
            fi
            ret="$?"
            success "Successfully installed ELF-Strings."
            debug
	    else
	        skipmsg "Found ELF-Strings in /opt. Skipping installation."
	    fi
	sleep 1
}

dotdotslash() {
	echo -e $green"Installing: dotdotslash"$reset
	    if [ ! -d "dotdotslash" ]; then
	        if [ "$verbose" = '0' ]; then
                git clone https://github.com/jcesarstef/dotdotslash.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/jcesarstef/dotdotslash.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed dotdotslash."
            debug
        else
            skipmsg "Found dotdotslash in /opt. Skipping installation."
	    fi
	sleep 1
}

burp_vulners() {
	echo -e $green"Installing: burp-vulners-scanner"$reset
	    if [ ! -d "burp-vulners-scanner" ]; then
	        if [ "$verbose" = '0' ]; then
                git clone https://github.com/vulnersCom/burp-vulners-scanner.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/vulnersCom/burp-vulners-scanner.git
            else
                :
            fi
            ret="$?"
            success "Successfully downloaded burp-vulners-scanner."
	        echo -e $lightYellow"Don't forget to manually install this module in Burp."$reset
	        sleep 3
	    else
	        skipmsg "Found burp-vulners-scanner in /opt. Skipping installation."
	    fi
	sleep 1
}

whonow() {
	echo -e $green"Installing: whonow"$reset
	    if [ ! -d "whonow" ]; then
	        if [ "$verbose" = '0' ]; then
                git clone https://github.com/brannondorsey/whonow.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/brannondorsey/whonow.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed whonow."
            debug
        else
	        skipmsg "Found whonow in /opt. Skipping installation."
	    fi
	sleep 1
}

wfuzz() {
	echo -e $green"Installing: wfuzz"$reset
	    if [ ! -d "wfuzz" ]; then
	        if [ "$verbose" = '0' ]; then
                git clone https://github.com/xmendez/wfuzz.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/xmendez/wfuzz.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed wfuzz."
            debug
        else
	        skipmsg "Found wfuzz in /opt. Skipping installation."
	    fi
	sleep 1
}

probableWordlists(){
    echo -e $green"Installing: Probable-Wordlists"$reset
        if [ ! -d "Probable-Wordlists" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/berzerk0/Probable-Wordlists.git &> /dev/null
            elif [ "$verbose"= '1' ]; then
                git clone https://github.com/berzerk0/Probable-Wordlists.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed Probable-Wordlists."
            debug
        else
            skipmsg "Found Probable-Wordlists in /opt. Skipping installation."
        fi
    sleep 1
}

veilFramework() {
    echo -e $green"Installing: Veil-Framework"$reset
        read -p "Veil takes a couple minutes to install. Do you want to continue with the install (y/n)? " choiceVeil
                case "$choiceVeil" in
                    [yY]|[yYeEsS] )
                                if [ "$verbose" = '0' ]; then
                                    echo "The installation process is a bit noisy. You're gonna see alot of stuff on the screen."
                                    sleep 2
                                fi
                                apt-get -y -qq install veil
                                veil --setup
                                ret="$?"
                                success "Successfully installed the Veil-Framework."
                                ;;
                      [nN]|[nNoO] ) skipmsg "Skipping the Veil installation.";;
                                * ) skipmsg "Skipping the Veil installation.";;
                esac
        debug
    sleep 1
}

#################### REDTEAM EVIL STUFF
#
#  These scripts are more evil in nature and are usually not used
#  in Enterprise/Business engagements. In other words, they are meant 
#  to be eitherdestructive, obtrusive, taunting, harrasing or are 
#  irreversable. Anything in these categories. Nonetheless, feel free to install 
#  them if you'd like. CCDC people, feel free to use and/or contribute. ;-)

windowsHacks() {
    echo -e $green"Installing: Windows-Hacks"$reset
        if [ ! -d "Windows-Hacks" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/LazoCoder/Windows-Hacks.git &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/LazoCoder/Windows-Hacks.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed Windows-Hacks."
            debug
        else
            skipmsg "Found Windows-Hacks in /opt. Skipping installation."
        fi
    sleep 1
}

backdoorFactory() {
    echo -e $green"Installing : Backdoor-Factory"$reset
        if [ ! -d "the-backdoor-factory" ]; then
            if [ "$verbose" = '0' ]; then
                git clone https://github.com/secretsquirrel/the-backdoor-factory.git &> /dev/null
            elif [ "$verbose" = '1' ]; then
                git clone https://github.com/secretsquirrel/the-backdoor-factory.git
            else
                :
            fi
            ret="$?"
            success "Successfully installed The-Backdoor-Factory."
            debug
        else
            skipmsg "Found The-Backdoor-Factory in /opt. Skipping installation."
        fi
    sleep 1
}

#################### TEMPLATE
#
#  if you want to add your own tool, just add this template code around
#  a function then add it to the call table below and you'll be good 
#  to go. Have fun.

#echo -e $green"Installing: ___"$reset
#    if [ ! -d "___" ]; then
#        if [ "$verbose" = '0' ]; then
#           git clone https://github.com/___.git &> /dev/null
#        elif [ "$verbose" = '1' ]; then
#           git clone https://github.com/___.git
#        else
#           :
#        fi
#        ret="$?"
#        success "DANK AF FAM"
#        debug
#    else
#        skipmsg "Found ___ in /opt. Skipping installation."
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
    echo -e "===$lightCyan Version:$reset$lightYellow $v         $reset==="
    echo -e "===$lightCyan Last Updated:$reset$lightYellow 04-12-18 $reset==="
    echo -e "===$lightCyan Made by @hellarafa <3  $reset==="
    echo -e "=============================="
    echo ""
}

#################### PROGRAM FUNCTIONS
#
#  Functions that make the program run nicer.
#

msg() {
    printf '%b\n' "$1" >&2
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
        echo -e $red
        msg "An error occurred in function \"${FUNCNAME[$i+1]}\" on line ${BASH_LINENO[$i+1]}, I'm sorry for that."
        echo -e $reset
    fi
}

#################### SETUP PARAMETERS
#
#  Just all the setup parameters, variables and stuff.
#
verbose='0'
debug_mode='0'
cd /opt
readonly reset="\e[0m"
readonly red="\e[31m"
readonly green="\e[38;5;46m"
readonly lightYellow="\e[93m"
readonly lightCyan="\e[96m"
optstring=':vbresh'

while getopts "$optstring" opt; do
    case $opt in
        v)  verbose=1;;
    esac
done
OPTIND=1
while getopts "$optstring" opt; do
    case $opt in
        r)  redteam
            finished
            exit
            ;;
        s)  start
            finished
            exit
            ;;
        e)  start
            redteam
            finished
            exit
            ;;
        b)  banner
            exit
            ;;
        h)  usage
            exit
            ;;
       \?)  echo "Invalid option: -$OPTARG" >&2
            usage
            exit 
            ;;
    esac
done

shift "$((OPTIND -1))"
usage
