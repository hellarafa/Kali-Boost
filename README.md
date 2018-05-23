###### [![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/hellarafa/Kali-Setup-Script/issues) [![Hits](http://hits.dwyl.com/{hellarafa}/{Kali-Setup-Script}.svg)](http://hits.dwyl.com/{hellarafa}/{Kali-Setup-Script})
# Kali Boost | v1.1.2

Installs popular pentesting tools in the /opt folder. Just run the script and watch the magic happen. Best if used on a fresh Kali install. Do not eat. :100:

### Installation:
```bash
wget https://raw.githubusercontent.com/hellarafa/Kali-Boost/master/kali-boost.sh
chmod +x kali-boost.sh
./kali-boost.sh -s
```
##### One-liner, cause you know, we're all lazy...
```bash
curl -s https://raw.githubusercontent.com/hellarafa/Kali-Boost/master/kali-boost.sh | bash /dev/stdin -s
```


### Usage:
```
#########################################################

Usage: kali-boost.sh [-args]

    OPTIONS:
    -s     Start the installation.
    -r     Install ONLY the red team stuff.
    -e     Install EVERYTHING.
    -u     Update Kali.
    -v     Be verbose.
    -l     List all the tools that are part of this script.
    -b     Show the banner.
    -h     Show this help screen.

#########################################################
```

