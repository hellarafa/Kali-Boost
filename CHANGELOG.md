# Changelog
All future changes from Version 1.0.4 and onward will be documented in this file.

## [1.1.2] - 2018-05-16
### Added
#### Tools
- psgetsystem from [@decoder-it](https://github.com/decoder-it/psgetsystem)

### Changed
- Big change!! Renamed tool and repo from Kali-Setup-Script to Kali-Boost. Such a better name.
- Moved everything to a new repo. Just for the cleanliness.

## [1.1.1] - 2018-04-18
### Added
- Verbosity option. Had to rewrite some of the code but it works. Default is silent or no verbose output unless user invokes with -v.
- Function that lists all the tools that are going to be installed. Invoke with -l. Thats lowercase L as in lollipop or loser or legit.
- Update function. Literally just updates Kali for you. Invoke with -u.

#### Tools
- dirsearch from [@maurosoria](https://github.com/maurosoria/dirsearch)
-

---
## [1.1.0] - 2018-04-12
### Added
- Added comments like a legit programmer.
#### Tools
- wfuzz from [@xmendez](https://github.com/xmendez/wfuzz)
- Probable-Wordlists from [@berzerk0](https://github.com/berzerk0/Probable-Wordlists)
- LinEnum from [@cheetz](https://github.com/cheetz/LinEnum)
- MeterSSH from [@trustedsec](https://github.com/trustedsec/meterssh)
- The-Backdoor-Factory from [@secretsquirrel](https://github.com/secretsquirrel/the-backdoor-factory)
- SigThief from [@secretSquirrel](https://github.com/secretsquirrel/SigThief)
- Veil-Framework from [@Veil-Framework](https://github.com/Veil-Framework/Veil)

### Changed
- Completely changed the logical operation of the script. First, I added everything into its own function. Second, I added arguments to help users decide what to install. Lastly, I added a call table that calls each function and in turn, installs each tool.
- New version because of the huge amount of changes I made.
- Fixed the Empire installation. It still didn't work.
- Made everything 1337 colorful with a nice checkmark. 
- Changed output messages.
- Included a debug function as well as some internal functions to make the output look nicer.

---
## [1.0.4] - 2018-04-02
### Added
- This changelog
#### Tools
- Whonow DNS Server from [@brannondorsey](https://github.com/brannondorsey)
- Burp vulners plugin from [@vulnersCom](https://github.com/vulnersCom)
- dotdotslash from [@jcesarstef](https://github.com/jcesarstef)

### Changed
- The Empire section was not actually installing Empire if th:wqe user selected "Yes". Added a couple of lines to fix it.
