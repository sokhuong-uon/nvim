# Neovim config for using with VSCode

## Plugins

- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim): Plugin manager.
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim): Jump to anywhere in visible screen.
  - <kbd>s</kbd> start searching Forward.
  - <kbd>S</kbd> start searching Backward.
  - <kbd>⭾</kbd> move to first result.
  - Type the _label charactor_ to move to the desired result.
  - Also works in `Visual mode`.

## Keybinding

**_Note_**: <kbd>leader</kbd> is set to Space <kbd>⎵</kbd>.

| Binding                          | What it does               | Mode  |
| -------------------------------- | -------------------------- | ----- |
| <kbd>leader</kbd>                | Show whichkey menu.        | `N`   |
| <kbd>leader</kbd> + <kbd>⎵</kbd> | Show Command Palette.      | `N`   |
| <kbd>leader</kbd> + <kbd>/</kbd> | Comment out selected code. | `N/V` |

### - Refactor

| Binding                                         | What it does        | Mode  |
| ----------------------------------------------- | ------------------- | ----- |
| <kbd>leader</kbd> + <kbd>r</kbd>                | Show refactor menu. | `N/V` |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>r</kbd> | Rename symbol.      | `N`   |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>i</kbd> | Organize import.    | `N`   |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>c</kbd> | Remove console log. | `N`   |

### - HTML Emmet

| Binding                                        | What it does                   | Mode  |
| ---------------------------------------------- | ------------------------------ | ----- |
| <kbd>leader</kbd> + <kbd>r</kbd>+ <kbd>w</kbd> | Wrap `<tag>`/s in another tag. | `N/V` |
| <kbd>leader</kbd> + <kbd>r</kbd>+ <kbd>d</kbd> | Delete HTML `<tag>`.           | `N`   |
| <kbd>leader</kbd> + <kbd>r</kbd>+ <kbd>u</kbd> | Update HTML `<tag>`.           | `N`   |
