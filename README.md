# dotosx

A collection of miscellaneous .files ("dot" files) and some regular files for OS X (see [dotfiles](https://github.com/orrsella/dotfiles) for Linux). Files can be saved anywhere in the repository, and symlinked to the actual files in their correct different locations on the system.

Noteworthy:

* `links` – The list of files to manage
* `install` – Setup symlinks based on `links`
* `osx` – Some OS X configuration ([based on .osx](https://github.com/mathiasbynens/dotfiles/blob/master/.osx))

## Setup

#### Clone

Clone to a local directory, like `~/.dotosx`:

```bash
$ cd ~
$ git clone https://github.com/orrsella/dotosx.git .dotosx
$ cd .dotosx/
```

#### Setup symlinks

**IMPORTANT:** This will *override* all existing files with a symlink to the new repository, losing anything you have in current files. If you have any important configuration in current .files, make sure to *first* save it to the cloned repo, and only then run the script:

```bash
$ ./install
```

#### OS X

Run `./osx` for some sane OS X config settings.

## Add New File

To add a new .file (or any other config file for that matter):

1. Copy the existing file to anywhere in the repo, chose the most logical path (the place you save the file in the repo doesn't have to correspond to the actual real path on the system where the original file is – chose whatever's most convenient for you). It makes sense to group multiple related files into appropriately named folders. File names must be identical to the actual ones on the system.

2. Add a new entry to the `links` file. The format is:

```
/path/on/system/.my-file1, /path/in/repo/.my-file1
/path/on/system/with\ space/.my-file2 /path/in/repo/.my-file2
```

See `links` for more details and examples.

## Homebrew

The `.brew` file maintains a list of all installed homebrew formulae. To update it:

```bash
$ brew leaves > .brew
```

## Apps

- 1Password
- Alfred
- Backblaze
- Bartender
- Cinch/Sizeup
- Chrome
- Disk Map
- Dropbox
- Fantastical
- Hues
- IntelliJ
- iTerm
- Mail Satellite
- Marked
- Office
- OmniFocus
- Pixelmator
- Reeder
- Rested
- Skype
- Soulver
- Sublime Text
- Tower
- Transmit
- Tweetbot
- VLC

Optional:

- Atom
- Calca
- Charles
- Kaleidoscope
- Oyster
- VirtualBox
- Wireshark
