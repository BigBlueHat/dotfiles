homesick-castle
===============

Using https://github.com/technicalpickles/homesick to keep track of all my
dotfiles.

## Dependencies

* [Vundle](https://github.com/gmarik/vundle)
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
    $ vi # be sure that loads VIM
    $ # then :BundleInstall ...and wait.

## Windows

* [Console2](http://www.hanselman.com/blog/Console2ABetterWindowsCommandPrompt.aspx)
* [Github for Windows](https://windows.github.com/)
* [Console2 + GH4W](http://nickberardi.com/using-git-bash-in-console2/)
  * paths are different than above, but ultimately the result is the same
