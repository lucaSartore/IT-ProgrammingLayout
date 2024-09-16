# IT-ProgrammingLayout

This repository contains a custom layout made for italian programmers

The layout is based on the US one, so it has easy access to keys like: \` and `~`, but it has some custom key bindings for the Italian accented letters... In particular:

 - `à` is done with `altgr + a`
 - `è` is done with `altgr + e`
 - `é` is done with `altgr + d`
 - `ì` is done with `altgr + i`
 - `ò` is done with `altgr + o`
 - `ù` is done with `altgr + u`
 - `€` is done with `altgr + 5`

 You can also use the `shift` key to make the letters upper case

## Installation

The program is based on [kanata](https://github.com/jtroo/kanata) and can be accessed simply by running kanata passing `kanata.kbd` as as the keybindings

Note that the program dose not start automatically, and it will be necessary to schedule it, how you can do that depends on theOS

### Windows
On windows it is necessary to sign the program in order to use inside programs that have elevated permissions (like an administrator command shell)
Instructions on how to sign the program can be found [here](https://github.com/jtroo/kanata/tree/main/EnableUIAccess)

The script require `autoHotKey` to be installed
```
choco install autohotkey.portable --version=2.0.4
```

To start automatically the program you insert a shortcut to `run.bat` inside `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`. Like shown [here](https://github.com/jtroo/kanata/discussions/193#discussioncomment-5276656)

