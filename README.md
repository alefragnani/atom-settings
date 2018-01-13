# Atom Settings

My personal Atom settings.

_I'm keeping it here because I want to have it synced between different machines._

## Config

* Encoding
* Font
* Word Wrap
* Ignored Names
  - Pascal
  - Java
  - FinalBuilder
* Disabled Packages

## Init Script

* Shortcut for closing Find and Replace panel

## Keymap

Mostly to use the same shortcut for every code editor

## Snippets

* Pascal
* Java
* JSON
* JavaScript
* CoffeeScript
* Markdown

## Stylesheet

_Not working - Atom raises error because of `@import "packages/file-icons/styles/icons"`. It appears to be using the synced folder, instead of `.atom`_

* Character Match in Command Palette and List Group
* StatusBar
  - On the bottom
  - Colored
  - No Filename
* Icons
  - Delphi
  - Database
  - Folders
* Bracket Matcher
* Markdown `code`
* Folding always visible
* Focused line
* Wrap line
* StatusBar

## Syncing (using Symlink)

### Windows

```
cd %HOMEPATH%/Documents/GitHub/atom-settings/
mklink /H %HOMEPATH%\.atom\config.cson config.cson
mklink /H %HOMEPATH%\.atom\init.coffee init.coffee
mklink /H %HOMEPATH%\.atom\keymap.cson keymap.cson
mklink /H %HOMEPATH%\.atom\snippets.cson snippets.cson
```
