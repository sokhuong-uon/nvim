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

| Binding                          | What it does               | Mode  | VSCode command                  |
| -------------------------------- | -------------------------- | ----- | ------------------------------- |
| <kbd>leader</kbd>                | Show whichkey menu.        | `N`   | `whichkey.show`                 |
| <kbd>leader</kbd> + <kbd>⎵</kbd> | Show Command Palette.      | `N`   | `workbench.action.showCommands` |
| <kbd>leader</kbd> + <kbd>/</kbd> | Comment out selected code. | `N/V` | `editor.action.commentLine`     |

### - Refactor

| Binding                                         | What it does        | Mode  | VSCode command                     |
| ----------------------------------------------- | ------------------- | ----- | ---------------------------------- |
| <kbd>leader</kbd> + <kbd>r</kbd>                | Show refactor menu. | `N/V` | `editor.action.refactor`           |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>r</kbd> | Rename symbol.      | `N`   | `editor.action.rename`             |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>i</kbd> | Organize import.    | `N`   | `editor.action.organizeImports`    |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>c</kbd> | Remove console log. | `N`   | **`:g/\\vconsole[.][lgtc]/d<cr>`** |

### - HTML Emmet

| Binding                                         | What it does                   | Mode  | VSCode command                             |
| ----------------------------------------------- | ------------------------------ | ----- | ------------------------------------------ |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>w</kbd> | Wrap `<tag>`/s in another tag. | `N/V` | `editor.emmet.action.wrapWithAbbreviation` |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>d</kbd> | Delete HTML `<tag>`.           | `N`   | `editor.emmet.action.removeTag`            |
| <kbd>leader</kbd> + <kbd>r</kbd> + <kbd>u</kbd> | Update HTML `<tag>`.           | `N`   | `editor.emmet.action.updateTag`            |

### - Buffer/Active Editor/Tab

| Binding                                         | What it does                                | Mode | VSCode command                                                  |
| ----------------------------------------------- | ------------------------------------------- | ---- | --------------------------------------------------------------- |
| <kbd>leader</kbd> + <kbd>w</kbd>                | Close active editor.                        | `N`  | `workbench.action.closeActiveEditor`                            |
| <kbd>leader</kbd> + <kbd>W</kbd>                | Close other active editor/s.                | `N`  | `workbench.action.closeOtherEditors`                            |
| <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>t</kbd> | Show active eidtor in file explorer.        | `N`  | `workbench.files.action.showActiveFileInExplorer`               |
| <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>r</kbd> | Rename file.                                | `N`  | `workbench.files.action.showActiveFileInExplorer`, `renameFile` |
| <kbd>leader</kbd> + <kbd>b</kbd> + <kbd>n</kbd> | New file in the same folder as active file. | `N`  | `workbench.explorer.fileView.focus`, `explorer.newFile`         |
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
