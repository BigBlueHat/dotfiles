homesick-castle
===============

Using https://github.com/technicalpickles/homesick to keep track of all my
dotfiles.

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

### Development

* [7-Zip](http://www.7-zip.org/) - for `tar.gz` files
* [Chocolatey](http://chocolatey.org/) - use PowerShell (Run as Administrator) when installing
  * [VIM](http://www.vim.org/) - `cinst vim`
  * [ag - the_silver_searcher](https://github.com/ggreer/the_silver_searcher/wiki/Windows) - `cinst ag`
  * [BIND tools](https://chocolatey.org/packages/bind-toolsonly) - `cinst bind-toolsonly` (mostly for `dig`)
  * [EditorConfig Core](http://chocolatey.org/packages/editorconfig.core) - `cinst editorconfig.core`
  * [ConsoleZ](https://github.com/cbucher/console#consolez) - `cinst ConsoleZ`
  * [Ruby](http://rubyinstaller.org/downloads/) - `cinst ruby msys2` + `cinst ruby2.devkit` + `ridk.cmd install`
    * [Jekyll](http://jekyllrb.com/) - `gem install jekyll`
    * Charlock fails on Windows...unless: `gem install charlock_holmes -- --with-icui18nlib=icuin --with-icudatalib=icudt`
* [Solzarized for Console 2 & Z](https://github.com/stevenharman/console2-solarized)
* [GitHub for Windows](https://windows.github.com/)
  * [Turn on directory colors (ls/ll)](https://stackoverflow.com/questions/14049896/setting-colors-for-ls-in-git-bash-on-windows)
* [Console2 + GH4W](http://nickberardi.com/using-git-bash-in-console2/)
  * `C:\Windows\SysWOW64\cmd.exe /c ""C:\Program Files (x86)\Git\bin\bash.exe" --login -i"`
* [mktemp](http://gnuwin32.sourceforge.net/packages/mktemp.htm)...no joke...
* [Python](https://www.python.org/downloads/windows/)
* [py2exe](http://sourceforge.net/projects/py2exe/files/py2exe/0.6.9/py2exe-0.6.9.win32-py2.7.exe/download) - grab the correct 32 or 64-bit edition per your OS ([re: StackOverflow](http://stackoverflow.com/questions/11288923/cannot-install-py2exe-with-python-2-7))
  * needed for [couchapp.py](http://github.com/couchapp/couchapp)
* [Node.js](http://nodejs.org/)
  * `npm install --global --production windows-build-tools` [because Windows...](https://github.com/nodejs/node-gyp#on-windows)
* [WinMerge](http://winmerge.org/)
* Maybe...
  * https://github.com/ipython/ipython/wiki/Cookbook:-Using-IPython-with-Console2
  * [WinMerge as mergetool](https://gist.github.com/shawndumas/6158524)

## Design
 - [Greenshot](http://getgreenshot.org/)
 - [Inkscape](http://inkscape.org/)

## Other
 - [CutePDF](http://www.cutepdf.com/Products/CutePDF/writer.asp)

## [1st5](http://bigbluehat.com/1st5)
 - [OBS](http://obsproject.com/)
   - setup for 1920x1080, mp4 file output, leave audio at AAC (Movie Maker doesn't like MP3 in MP4s)
   - setup Monitor recording as that's easiest
   - short cuts: ``Shift+` `` for start recording; `` ` `` for stop.
 - [VLC](http://www.videolan.org/vlc/)
 - [Windows Movie Maker](http://windows.microsoft.com/en-US/Windows-Live/movie-maker)
   - doesn't come with Windows 8...apparently.
