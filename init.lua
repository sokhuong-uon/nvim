require("config.lazy")
local vscodeCustomCommands = require("vscode-custom-command")

local whichkey = vscodeCustomCommands.whichkey
local comment = vscodeCustomCommands.comment
local refactor = vscodeCustomCommands.refactor
local fold = vscodeCustomCommands.fold
local git = vscodeCustomCommands.git
local problem = vscodeCustomCommands.problem
local search = vscodeCustomCommands.search
local toggle = vscodeCustomCommands.toggle
local workbench = vscodeCustomCommands.workbench
local file = vscodeCustomCommands.file
local gitGoto = vscodeCustomCommands.gitGoto

--#region keymap
vim.g.mapleader = " "

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


-- refactor js/ts: remove console log
vim.keymap.set('n', "<leader>rc", ":g/\\vconsole[.][lgtc]/d<cr>")

vim.opt.cpoptions = vim.opt.cpoptions + (">")

--#endregion keymap

if vim.g.vscode then
  --#region keymap

  -- whichkey
  vim.keymap.set({ 'n', 'v' }, "<leader>", whichkey.show)

  -- comment
  vim.keymap.set({ 'n', 'v' }, "<leader>/", comment.selected)

  -- multi cursor
  vim.keymap.set({ "n", "x", "i" }, "<C-d>", vscodeCustomCommands.multiCursor)

  -- show VSCode Editor Command ( Ctrl+Shift+P )
  vim.keymap.set('n', "<leader> ", workbench.showCommands)

  vim.keymap.set({ 'n', 'v' }, "H", workbench.previousEditor)
  vim.keymap.set({ 'n', 'v' }, "L", workbench.nextEditor)

  -- go to parent bracket
  vim.keymap.set('n', "gb", fold.gotoParentFold, { noremap = true, silent = true })

  -- problem
  vim.keymap.set('n', "<leader>pl", problem.list)
  vim.keymap.set('n', "<leader>pn", problem.next)
  vim.keymap.set('n', "<leader>pp", problem.previous)
  vim.keymap.set('n', "<leader>p.", problem.quickFix)

  -- git
  vim.keymap.set('n', "<leader>gs", git.switch)
  vim.keymap.set('n', "<leader>gd", git.deleteBranch)
  vim.keymap.set('n', "<leader>gn", gitGoto.nextChange, { noremap = true, silent = true })
  vim.keymap.set('n', "<leader>gN", gitGoto.showNextChange, { noremap = true, silent = true })
  vim.keymap.set('n', "<leader>gp", gitGoto.previousChange, { noremap = true, silent = true })
  vim.keymap.set('n', "<leader>gP", gitGoto.showPreviousChange, { noremap = true, silent = true })
  vim.keymap.set('n', "<leader>gr", gitGoto.revertChange, { noremap = true, silent = true })

  -- file
  vim.keymap.set('n', "<leader>w", file.close)
  vim.keymap.set('n', "<leader>W", file.closeOther)

  vim.keymap.set('n', "<leader>ff", file.format)
  vim.keymap.set('n', "<leader>fn", file.new)
  vim.keymap.set('n', "<leader>fr", file.rename)
  vim.keymap.set('n', "<leader>fs", file.save)
  vim.keymap.set('n', "<leader>fS", file.saveAll)

  vim.keymap.set('n', "<leader>fe", file.showInExplorer)
  vim.keymap.set('n', "<leader>fp", file.copyPathToClipboard)

  -- toggle
  vim.keymap.set('n', "<leader>ta", toggle.activityBar)
  vim.keymap.set('n', "<leader>tz", toggle.zenMode)
  vim.keymap.set('n', "<leader>ts", toggle.sidebar)
  vim.keymap.set('n', "<leader>tt", toggle.theme)
  vim.keymap.set('n', "<leader>tb", toggle.breadcrumbs)

  -- refactor
  vim.keymap.set({ 'n', 'v' }, "<leader>r", refactor.showMenu)
  vim.keymap.set('n', "<leader>rr", refactor.rename)
  -- orgainze import
  vim.keymap.set('n', "<leader>ri", refactor.organizeImport)
  -- refactor html
  vim.keymap.set({ 'n', 'v' }, "<leader>rw", refactor.html.wrap)
  vim.keymap.set({ 'n' }, "<leader>rd", refactor.html.delete)
  vim.keymap.set({ 'n' }, "<leader>ru", refactor.html.update)

  -- search
  vim.keymap.set('n', "<leader>sr", search.reference)
  vim.keymap.set('v', "<leader>ss", search.selected)
  vim.keymap.set('n', "<leader>sR", search.referenceInSideBar)
  vim.keymap.set('n', "<leader>st", search.text)
  vim.keymap.set('n', "<leader>sf", search.file)

  -- copy
  vim.keymap.set('v', "<leader>y", function()
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
