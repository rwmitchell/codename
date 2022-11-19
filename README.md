# codename
## About
Get the OS codename

## Examples
- Raspbian: buster, bullseye
- OSX: Big Sur, Monterey, Ventura

## Background
These are the only systems I have current access, please contribute methods for determining the OS codename for your system.

There is not a consistent method to get the OSX codename, this uses the major version number and a simple lookup.  This requires updating on every new release.

Raspbian provides the codename in /etc/os-release.  Although rasbpian is based on debian, debian does not do this.

## Using
- Add this near bottom of .zshrc (or equivilent)

#
        source codename.plugin.zsh
        export OS_CODENAME=$(codename)

- add function to .p10k.zsh near top:

#
        function prompt_codename() {
          p10k segment -b 237 -f 196 -i ${OS_CODENAME}
        }

- Add 'codename' to your desired location in the prompt components
