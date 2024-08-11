# Neovim config for using with VSCode

## Installation (Linux)
### 1. Download
```bash
bash <(curl -s https://raw.githubusercontent.com/sokhuong-uon/nvim/main/installer.sh)
```
or clone this repo into your `.config` folder

### 2. Config
Point VSCode Neovim config path to `init.lua`.

## VSCode extensions needed

- [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim)
- [whichkey](https://github.com/VSpaceCode/vscode-which-key) (optional)

## Plugins

- [folke/flash.nvim](https://github.com/folke/flash.nvim).
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround).

## Keybinding

**_Note_**: <kbd>leader</kbd> is set to Space <kbd>⎵</kbd>.

| Binding                          | What it does               | Mode  | VSCode command                  |
| -------------------------------- | -------------------------- | ----- | ------------------------------- |
| <kbd>⎵</kbd>                | Show whichkey menu.        | `N`   | `whichkey.show`                 |
| <kbd>⎵</kbd> + <kbd>⎵</kbd> | Show Command Palette.      | `N`   | `workbench.action.showCommands` |
| <kbd>⎵</kbd> + <kbd>/</kbd> | Comment out selected code. | `N/V` | `editor.action.commentLine`     |

### - Refactor

| Binding                                         | What it does        | Mode  | VSCode command                     |
| ----------------------------------------------- | ------------------- | ----- | ---------------------------------- |
| <kbd>⎵</kbd> + <kbd>r</kbd>                | Show refactor menu. | `N/V` | `editor.action.refactor`           |
| <kbd>⎵</kbd> + <kbd>r</kbd> + <kbd>r</kbd> | Rename symbol.      | `N`   | `editor.action.rename`             |
| <kbd>⎵</kbd> + <kbd>r</kbd> + <kbd>i</kbd> | Organize import.    | `N`   | `editor.action.organizeImports`    |
| <kbd>⎵</kbd> + <kbd>r</kbd> + <kbd>c</kbd> | Remove console log. | `N`   | **`:g/\\vconsole[.][lgtc]/d<cr>`** |

### - HTML Emmet

| Binding                                         | What it does                   | Mode  | VSCode command                             |
| ----------------------------------------------- | ------------------------------ | ----- | ------------------------------------------ |
| <kbd>⎵</kbd> + <kbd>r</kbd> + <kbd>w</kbd> | Wrap `<tag>`/s in another tag. | `N/V` | `editor.emmet.action.wrapWithAbbreviation` |
| <kbd>⎵</kbd> + <kbd>r</kbd> + <kbd>d</kbd> | Delete HTML `<tag>`.           | `N`   | `editor.emmet.action.removeTag`            |
| <kbd>⎵</kbd> + <kbd>r</kbd> + <kbd>u</kbd> | Update HTML `<tag>`.           | `N`   | `editor.emmet.action.updateTag`            |

### - Buffer/Active Editor/Tab

| Binding                                         | What it does                                | Mode | VSCode command                                                  |
| ----------------------------------------------- | ------------------------------------------- | ---- | --------------------------------------------------------------- |
| <kbd>⎵</kbd> + <kbd>w</kbd>                | Close active editor.                        | `N`  | `workbench.action.closeActiveEditor`                            |
| <kbd>⎵</kbd> + <kbd>W</kbd>                | Close other active editor/s.                | `N`  | `workbench.action.closeOtherEditors`                            |
| <kbd>⎵</kbd> + <kbd>b</kbd> + <kbd>t</kbd> | Show active eidtor in file explorer.        | `N`  | `workbench.files.action.showActiveFileInExplorer`               |
| <kbd>⎵</kbd> + <kbd>b</kbd> + <kbd>r</kbd> | Rename file.                                | `N`  | `workbench.files.action.showActiveFileInExplorer`, `renameFile` |
| <kbd>⎵</kbd> + <kbd>b</kbd> + <kbd>n</kbd> | New file in the same folder as active file. | `N`  | `workbench.explorer.fileView.focus`, `explorer.newFile`         |
| <kbd>Ctrl</kbd> + <kbd>s</kbd>                  | Save file.                                  | `N`  | <kbd>Ctrl</kbd> + <kbd>s</kbd>                                  |

<!-- <table>
  <thead style="color:green;">
    <td>Binding</td> <td>What is does</td> <td>Mode</td> <td>VSCode command</td>
  </thead>

  <tr>
    <td>Blackstreet</td> <td>Like the way you work it.</td> <td>No diggity.</td> <td>Ha yo, ha yo, ha yo, hay oh.<br>Woww</td>
  </tr>

</table> -->

### - Explore/list navigation

https://github.com/vscode-neovim/vscode-neovim#explorerlist-navigation

### - File explorer manipulation

https://github.com/vscode-neovim/vscode-neovim#explorer-file-manipulation
