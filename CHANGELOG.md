# Changelog
All future changes from version 1.0.4 and on will be documented in this file.

## [1.1.0] - 2018-04-12
### Added
- Added comments like a legit programmer.
- wfuzz from [@xmendez](https://github.com/xmendez/wfuzz)
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

## [1.0.4] - 2018-04-02
### Added
- This changelog
- Whonow DNS Server from [@brannondorsey](https://github.com/brannondorsey)
- Burp vulners plugin from [@vulnersCom](https://github.com/vulnersCom)
- dotdotslash from [@jcesarstef](https://github.com/jcesarstef)

### Changed
- The Empire section was not actually installing Empire if th:wqe user selected "Yes". Added a couple of lines to fix it.
