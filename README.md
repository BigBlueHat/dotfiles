# dotfiles

I used to use https://github.com/technicalpickles/homesick to keep track of all my
dotfiles, but these days I mostly keep notes here about my various "dotfiles" and
track what install steps I do (too frequently...) for each laptop I setup.

## Dependencies

* [Vundle](https://github.com/gmarik/vundle)
* [EditorConfig](http://editorconfig.org/)
* [Source Code Pro](https://github.com/adobe-fonts/source-code-pro/releases)
* [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)
  * brew install ag
* [bash-completion](http://bash-completion.alioth.debian.org/)
  * brew install bash-completion
* [Solarized for Terminal.app](https://github.com/tomislav/osx-terminal.app-colors-solarized)

## Install

    $ gem install homesick
    $ homesick clone https://github.com/BigBlueHat/dotfiles.git
    $ homesick symlink
    $ # install Vundle (if you haven't)
    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    $ vi # be sure that loads VIM
    $ # then :BundleInstall ...and wait.

## Windows

#### File systems
* [TrID - File Identifier](https://www.mark0.net/soft-trid-e.html)

### Development

#### Foundations
* [7-Zip](http://www.7-zip.org/) - for `tar.gz` files
* [Chocolatey](http://chocolatey.org/) - use PowerShell (Run as Administrator) when installing
* [git](https://git-scm.com) - `cinst git` as much for bash as for git
* [Windows Terminal](https://github.com/Microsoft/Terminal) - `cinst microsoft-windows-terminal` + [config below](#windows-terminal-config)
* [Turn on directory colors (ls/ll)](https://stackoverflow.com/questions/14049896/setting-colors-for-ls-in-git-bash-on-windows)
* [BIND tools](https://chocolatey.org/packages/bind-toolsonly) - `cinst bind-toolsonly` (mostly for `dig`)
* cmake - `cinst cmake -f --installargs 'ADD_CMAKE_TO_PATH=User'`
* make (for Makefiles) - `cinst make --source=cygwin` (comes with loads of other stuff too; add it to `PATH`)

#### Editors, etc.
* [VIM](http://www.vim.org/) - `cinst vim`
* [ag - the_silver_searcher](https://github.com/ggreer/the_silver_searcher/wiki/Windows) - `cinst ag`
* [EditorConfig Core](http://chocolatey.org/packages/editorconfig.core) - `cinst editorconfig.core`
* [mdcat](https://github.com/lunaryorn/mdcat) - `cinst mdcat` for making Markdown look nice in a console

Previous used...
* [ConsoleZ](https://github.com/cbucher/console#consolez) - `cinst ConsoleZ`
* [Console2 + GH4W](http://nickberardi.com/using-git-bash-in-console2/)
  * `C:\Windows\SysWOW64\cmd.exe /c ""C:\Program Files (x86)\Git\bin\bash.exe" --login -i"`
  * [Solzarized for Console 2 & Z](https://github.com/stevenharman/console2-solarized)

#### Languages
* [Ruby](http://rubyinstaller.org/downloads/)
  * core `cinst ruby msys2` + `cinst ruby2.devkit` + `C:\tools\ruby26\bin\ridk.cmd install`
  * [Jekyll](http://jekyllrb.com/) - `gem install jekyll`
  * Charlock fails on Windows...[unless...](https://github.com/brianmario/charlock_holmes/issues/84#issuecomment-478335029)
    * From CMD or PowerShell: `ridk exec pacman -S mingw-w64-x86_64-icu icu-devel icu`
    * `gem install charlock_holmes -- --with-icui18nlib=icuin --with-icudatalib=icudt`
* [node](https://nodejs.org/) - `cinst nodejs`
* [yarn](https://yarnpkg.com/) - `cinst yarn`
* [Python](https://www.python.org/downloads/windows/)
* [py2exe](http://sourceforge.net/projects/py2exe/files/py2exe/0.6.9/py2exe-0.6.9.win32-py2.7.exe/download) - grab the correct 32 or 64-bit edition per your OS ([re: StackOverflow](http://stackoverflow.com/questions/11288923/cannot-install-py2exe-with-python-2-7))
  * needed for [couchapp.py](http://github.com/couchapp/couchapp)

#### Extra Handy Tools
* [WinMerge](http://winmerge.org/)
* Maybe...
  * https://github.com/ipython/ipython/wiki/Cookbook:-Using-IPython-with-Console2
  * [WinMerge as mergetool](https://gist.github.com/shawndumas/6158524)

## Design
 - [Greenshot](http://getgreenshot.org/)
 - [Inkscape](http://inkscape.org/)

## Other
 - [CutePDF](http://www.cutepdf.com/Products/CutePDF/writer.asp)
 - [USBDLM](https://www.uwe-sieber.de/usbdlm_e.html) - for managing drive letters of SD cards and external hard drives

## [1st5](http://bigbluehat.com/1st5)
 - [OBS](http://obsproject.com/)
   - setup for 1920x1080, mp4 file output, leave audio at AAC (Movie Maker doesn't like MP3 in MP4s)
   - setup Monitor recording as that's easiest
   - short cuts: ``Shift+` `` for start recording; `` ` `` for stop.
 - [VLC](http://www.videolan.org/vlc/)
 - [Windows Movie Maker](http://windows.microsoft.com/en-US/Windows-Live/movie-maker)
   - doesn't come with Windows 8...apparently.


## Configurations

### Windows Terminal [config](https://aka.ms/terminal-documentation):
```jsonc
{
    "$schema": "https://aka.ms/terminal-profiles-schema",

    "defaultProfile": "{00000000-0000-0000-ba54-000000000002}",

    "profiles":
    [
        {
            // Make changes here to the powershell.exe profile
            "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
            "name": "Windows PowerShell",
            "commandline": "powershell.exe",
            "hidden": false
        },
        {
            // Make changes here to the cmd.exe profile
            "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
            "name": "cmd",
            "commandline": "cmd.exe",
            "hidden": false
        },
        {
            "guid": "{b453ae62-4e3d-5e58-b989-0a998ec441b8}",
            "hidden": false,
            "name": "Azure Cloud Shell",
            "source": "Windows.Terminal.Azure"
        },
        {
            "guid": "{00000000-0000-0000-ba54-000000000002}",
            "colorScheme" : "Campbell",
            "commandline" : "\"%PROGRAMFILES%\\git\\usr\\bin\\bash.exe\" -i -l",
            "cursorColor" : "#FFFFFF",
            "cursorShape" : "bar",
            "fontFace" : "Source Code Pro",
            "fontSize" : 12,
            "historySize" : 9001,
            "icon" : "ms-appx:///ProfileIcons/{0caa0dad-35be-5f56-a8ff-afceeeaa6101}.png",
            "name" : "Bash",
            "padding" : "0, 0, 0, 0",
            "snapOnInput" : true,
            "startingDirectory" : "%USERPROFILE%"
        }
    ],

    // Add custom color schemes to this array
    "schemes": [],

    // Add any keybinding overrides to this array.
    // To unbind a default keybinding, set the command to "unbound"
    "keybindings": []
}
```
