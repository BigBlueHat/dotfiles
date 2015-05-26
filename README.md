homesick-castle
===============

Using https://github.com/technicalpickles/homesick to keep track of all my
dotfiles.

## Dependencies

* [Vundle](https://github.com/gmarik/vundle)
* [EditorConfig](http://editorconfig.org/)
* [Source Code Pro](http://sourceforge.net/projects/sourcecodepro.adobe/files/)
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

* [VIM](http://www.vim.org/download.php)
* [Chocolatey](http://chocolatey.org/)
  * required for [EditorConfig Core](http://chocolatey.org/packages/editorconfig.core)
  * use `cmd` for installing Chocolatey
  * use `PowerShell` for `cinst editorconfig.core`
* [ConsoleZ](https://github.com/cbucher/console#consolez)
  * `cinst ConsoleZ`
* [Solzarized for Console 2 & Z](https://github.com/stevenharman/console2-solarized)
* [GitHub for Windows](https://windows.github.com/)
* [Console2 + GH4W](http://nickberardi.com/using-git-bash-in-console2/)
  * `C:\Windows\SysWOW64\cmd.exe /c ""C:\Program Files (x86)\Git\bin\bash.exe" --login -i"`
* [Ruby](http://rubyinstaller.org/downloads/)
  * required for `homesick` (though `homesick symlink` doesn't work on Windows...)
* [Python](https://www.python.org/downloads/windows/)
* [py2exe](http://sourceforge.net/projects/py2exe/files/py2exe/0.6.9/py2exe-0.6.9.win32-py2.7.exe/download) - grab the correct 32 or 64-bit edition per your OS ([re: StackOverflow](http://stackoverflow.com/questions/11288923/cannot-install-py2exe-with-python-2-7))
  * needed for [couchapp.py](http://github.com/couchapp/couchapp)
