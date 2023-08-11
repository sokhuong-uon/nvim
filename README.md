# Neovim config for using with VSCode

## Plugins

- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim): Plugin manager.
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim): Jump to anywhere in visible screen.
  - <kbd>s</kbd> start searching Forward.
  - <kbd>S</kbd> start searching Backward.
  - <kbd>⭾</kbd> move to first result.
  - type the _label charactor_ to move to the desired result.

## Keybinding

Note: <kbd>leader</kbd> is set to Space <kbd>⎵</kbd>.

- <kbd>leader</kbd>: Show whichkey menu. Mode: `N/V`
- <kbd>leader</kbd> + <kbd>⎵</kbd>: Show Command Palette.
- <kbd>leader</kbd> + <kbd>/</kbd>: Comment out selected code. Mode: `N/V`

#### - Refactor

- <kbd>leader</kbd> + <kbd>r</kbd>: Show refactor menu.
- <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>i</kbd>: Organize import.
- <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>r</kbd>: Rename symbol.
- <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>c</kbd>: Remove some console log.
