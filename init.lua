require("plugins")
local vscode = require("vscode")

local whichkey = vscode.whichkey
local refactor = vscode.refactor
local fold = vscode.fold
local git = vscode.git
local problem = vscode.problem
local search = vscode.search
local toggle = vscode.toggle
local workbench = vscode.workbench
local buffer = vscode.buffer
local gitGoto = vscode.gitGoto

--#region keymap
vim.g.mapleader = " "

vim.keymap.set('i', 'jk', "<Esc>")

vim.keymap.set({ 'n', 'v' }, '<leader>h', '^', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>l', '$', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>a', '%', { remap = true, silent = true })

vim.keymap.set({ 'n', 'v' }, "j", "gj", { silent = true, remap = true })
vim.keymap.set({ 'n', 'v' }, "k", "gk", { silent = true, remap = true })

-- move page and center cursor
vim.keymap.set({ 'n', 'v' }, "<C-f>", "<C-f>zz", { noremap = true })
vim.keymap.set({ 'n', 'v' }, "<C-b>", "<C-b>zz", { noremap = true })

-- no highlight
vim.keymap.set({ 'n' }, "<leader>n", "<cmd>noh<cr>")

-- refactor js/ts: remove console.log
vim.keymap.set('n', "<leader>rc", ":g/console.lo/d<cr>")

--#endregion keymap

if vim.g.vscode then
  --#region keymap

  -- whichkey
  vim.keymap.set('n', "<leader>", whichkey.show)

  -- orgainze import
  vim.keymap.set('n', "<leader>ri", buffer.organizeImport)

  -- show VSCode Editor Command ( Ctrl+Shift+P )
  vim.keymap.set('n', "<leader> ", workbench.showCommands)

  vim.keymap.set({ 'n', 'v' }, "H", workbench.previousEditor)
  vim.keymap.set({ 'n', 'v' }, "L", workbench.nextEditor)

  -- go to
  vim.keymap.set('n', "gn", gitGoto.nextChange, { noremap = true, silent = true })
  vim.keymap.set('n', "gN", gitGoto.showNextChange, { noremap = true, silent = true })
  vim.keymap.set('n', "gp", gitGoto.previousChange, { noremap = true, silent = true })
  vim.keymap.set('n', "gP", gitGoto.showPreviousChange, { noremap = true, silent = true })

  -- go to fold
  vim.keymap.set('n', "gf", fold.gotoParentFold, { noremap = true, silent = true })

  -- problem
  vim.keymap.set('n', "<leader>pl", problem.list)
  vim.keymap.set('n', "<leader>pn", problem.next)
  vim.keymap.set('n', "<leader>pp", problem.previous)

  -- git
  vim.keymap.set('n', "<leader>gb", git.switch)
  vim.keymap.set('n', "<leader>gi", git.init)
  vim.keymap.set('n', "<leader>gd", git.deleteBranch)
  vim.keymap.set('n', "<leader>gf", git.fetch)
  vim.keymap.set('n', "<leader>gs", git.status)
  vim.keymap.set('n', "<leader>gp", git.pull)
  vim.keymap.set('n', "<leader>gg", git.graph)
  vim.keymap.set('n', "gr", gitGoto.revertChange, { noremap = true, silent = true })

  -- buffer
  vim.keymap.set('n', "<leader>c", buffer.close)
  vim.keymap.set('n', "<leader>bc", buffer.close)
  vim.keymap.set('n', "<leader>k", buffer.closeOther)
  vim.keymap.set('n', "<leader>bk", buffer.closeOther)
  vim.keymap.set('n', "<leader>w", buffer.save)
  vim.keymap.set('n', "<leader>wa", buffer.saveAll)
  vim.keymap.set('n', "<leader>bf", buffer.format)
  vim.keymap.set('n', "<leader>bn", buffer.new)
  vim.keymap.set('n', "<leader>bt", buffer.showInExplorer)
  vim.keymap.set('n', "<leader>br", buffer.rename)

  -- toggle
  vim.keymap.set('n', "<leader>ta", toggle.activityBar)
  vim.keymap.set('n', "<leader>tz", toggle.zenMode)
  vim.keymap.set('n', "<leader>ts", toggle.sideBarVisibility)
  vim.keymap.set('n', "<leader>tt", toggle.theme)
  vim.keymap.set('n', "<leader>tl", toggle.breadcrumbs)

  -- refactor
  vim.keymap.set('n', "<leader>r", refactor.showMenu)
  vim.keymap.set('n', "<leader>rr", refactor.rename)
  -- refactor html
  vim.keymap.set({ 'n', 'v' }, "<leader>rw", refactor.html.wrap)
  vim.keymap.set({ 'n', 'v' }, "<leader>rd", refactor.html.delete)
  vim.keymap.set({ 'n', 'v' }, "<leader>ru", refactor.html.update)

  -- search
  vim.keymap.set('n', "<leader>sr", search.reference)
  vim.keymap.set('n', "<leader>ss", search.symbols)
  vim.keymap.set('n', "<leader>sR", search.referenceInSideBar)
  vim.keymap.set('n', "<leader>sp", search.project)
  vim.keymap.set('n', "<leader>st", search.text)
  vim.keymap.set('n', "<leader>sf", search.file)

  -- selection
  vim.keymap.set('v', "<leader>s", function()
    vim.fn.VSCodeNotifyRange("setSelection", vim.fn.line("v"), vim.fn.line("."), 1)
  end, { noremap = true, silent = true })

  -- copy
  vim.keymap.set('v', "<leader>y", function()
    vim.fn.VSCodeNotifyRange("setSelection", vim.fn.line("v"), vim.fn.line("."), 1)
    vim.fn.VSCodeNotify("editor.action.clipboardCopyAction")
  end, { noremap = true, silent = true })

  --folding
  vim.keymap.set('n', "zr", fold.openAll)
  vim.keymap.set('n', "zm", fold.all)
  vim.keymap.set('n', "za", fold.toggle)
  --#endregion keymap
else
  -- ordinary Neovim
  vim.opt.tabstop = 2
end
