# Neovim config for using with VSCode

## VSCode extensions needed

- [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim)
- [whichkey](https://github.com/VSpaceCode/vscode-which-key) (optional)

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

| Binding                                         | What it does                   | Mode  |
| ----------------------------------------------- | ------------------------------ | ----- |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>w</kbd> | Wrap `<tag>`/s in another tag. | `N/V` |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>d</kbd> | Delete HTML `<tag>`.           | `N`   |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>u</kbd> | Update HTML `<tag>`.           | `N`   |

### - Buffer/Active Editor/Tab

| Binding                                         | What it does                                | Mode |
| ----------------------------------------------- | ------------------------------------------- | ---- |
| <kbd>leader</kbd> + <kbd>w</kbd>                | Close active editor.                        | `N`  |
| <kbd>leader</kbd> + <kbd>W</kbd>                | Close other active editor/s.                | `N`  |
| <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>t</kbd> | Show active eidtor in file explorer.        | `N`  |
| <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>r</kbd> | Rename file.                                | `N`  |
| <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>n</kbd> | New file in the same folder as active file. | `N`  |
| <kbd>Ctrl</kbd> + <kbd>s</kbd>                  | Save file.                                  | `N`  |

### - Explore/list navigation

https://github.com/vscode-neovim/vscode-neovim#explorerlist-navigation

### - File explorer manipulation

https://github.com/vscode-neovim/vscode-neovim#explorer-file-manipulation
