# Changelog
All future changes from this point on will be documented in this file.

## [1.1.0] - 2018-04-10
### Added
- Added comments like a legit programmer.
- wfuzz from [@xmendez](https://github.com/xmendez/wfuzz)
- LinEnum from [@cheetz](https://github.com/cheetz/LinEnum)
- MeterSSH from [@trustedsec](https://github.com/trustedsec/meterssh)
- The-Backdoor-Factory from [@secretsquirrel](https://github.com/secretsquirrel/the-backdoor-factory)
- SigThief from [@secretSquirrel](https://github.com/secretsquirrel/SigThief)
- Veil-Framework from [@Veil-Framework](https://github.com/Veil-Framework/Veil)

### Changed
- Functionalized the entire script so that every git installation is in its own function. I did this to help the user specify which packages won't be installed by simply commenting out a function call at the bottom of the script.
- Fixed the Empire Instalation. It still didn't work.
- Made everything 1337 colorful. 
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
