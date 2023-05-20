require("plugins")

--#region keymap
vim.g.mapleader = " "

vim.keymap.set('i', 'jk', "<Esc>")
vim.keymap.set({ 'n', 'v' }, "j", "gj", { silent = true })
vim.keymap.set({ 'n', 'v' }, "k", "gk", { silent = true })

vim.keymap.set({ 'n', 'v' }, '<leader>h', '^', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>l', '$', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>a', '%', { silent = true })


-- no highlight
vim.keymap.set({ 'n' }, "<leader>n", "<cmd>noh<cr>")

--#endregion keymap

if vim.g.vscode then
  -- VSCode extension
  --#region variable
  local whichkey = {
    show = function()
      vim.fn.VSCodeNotify("whichkey.show")
    end
  }

  local comment = {
    selected = function()
      vim.fn.VSCodeNotifyRange("editor.action.commentLine", vim.fn.line("v"), vim.fn.line("."), 1)
    end
  }

  local problem = {
    list = function()
      vim.fn.VSCodeNotify("workbench.actions.view.problems")
    end,

    next = function()
      vim.fn.VSCodeNotify("editor.action.marker.next")
    end,

    previous = function()
      vim.fn.VSCodeNotify("editor.action.marker.prev")
    end,
  }

  local buffer = {
    new = function()
      vim.fn.VSCodeNotify("workbench.explorer.fileView.focus")
      vim.fn.VSCodeNotify("explorer.newFile")
    end,

    save = function()
      vim.fn.VSCodeNotify("workbench.action.files.save")
    end,

    saveAll = function()
      vim.fn.VSCodeNotify("workbench.action.files.saveAll")
    end,

    format = function()
      vim.fn.VSCodeNotify("editor.action.formatDocument")
    end,

    showInExplorer = function()
      vim.fn.VSCodeNotify("workbench.files.action.showActiveFileInExplorer")
    end,

    rename = function()
      vim.fn.VSCodeNotify("workbench.files.action.showActiveFileInExplorer")
      vim.fn.VSCodeNotify("renameFile")
    end,

    close = function()
      vim.fn.VSCodeNotify("workbench.action.closeActiveEditor")
    end,

    closeOther = function()
      vim.fn.VSCodeNotify("workbench.action.closeOtherEditors")
    end,

    organizeImport = function()
      vim.fn.VSCodeNotify("editor.action.organizeImports")
    end
  }

  local workbench = {
    showCommands = function()
      vim.fn.VSCodeNotify("workbench.action.showCommands")
    end,
    previousEditor = function()
      vim.fn.VSCodeNotify("workbench.action.previousEditor")
    end,
    nextEditor = function()
      vim.fn.VSCodeNotify("workbench.action.nextEditor")
    end,
  }

  local toggle = {
    activityBar = function()
      vim.fn.VSCodeNotify("workbench.action.toggleActivityBarVisibility")
    end,

    sideBarVisibility = function()
      vim.fn.VSCodeNotify("workbench.action.toggleSidebarVisibility")
    end,

    zenMode = function()
      vim.fn.VSCodeNotify("workbench.action.toggleZenMode")
    end,

    theme = function()
      vim.fn.VSCodeNotify("workbench.action.selectTheme")
    end,

    breadcrumbs = function()
      vim.fn.VSCodeNotify("breadcrumbs.toggle")
    end,
  }

  local symbol = {
    rename = function()
      vim.fn.VSCodeNotify("editor.action.rename")
    end,
  }

  local search = {
    reference = function()
      vim.fn.VSCodeNotify("editor.action.referenceSearch.trigger")
    end,

    referenceInSideBar = function()
      vim.fn.VSCodeNotify("references-view.find")
    end,

    project = function()
      vim.fn.VSCodeNotify("editor.action.addSelectionToNextFindMatch")
      vim.fn.VSCodeNotify("workbench.action.findInFiles")
    end,

    text = function()
      vim.fn.VSCodeNotify("workbench.action.findInFiles")
    end,

    file = function()
      vim.fn.VSCodeNotify("workbench.action.quickOpen")
    end,
  }

  local project = {
    findFile = function()
      vim.fn.VSCodeNotify("workbench.action.quickOpen")
    end,
    switch = function()
      vim.fn.VSCodeNotify("workbench.action.openRecent")
    end,
    tree = function()
      vim.fn.VSCodeNotify("workbench.view.explorer")
    end,
  }

  local git = {
    init = function()
      vim.fn.VSCodeNotify("git.init")
    end,
    status = function()
      vim.fn.VSCodeNotify("workbench.view.scm")
    end,
    switch = function()
      vim.fn.VSCodeNotify("git.checkout")
    end,
    deleteBranch = function()
      vim.fn.VSCodeNotify("git.deleteBranch")
    end,
    push = function()
      vim.fn.VSCodeNotify("git.push")
    end,
    pull = function()
      vim.fn.VSCodeNotify("git.pull")
    end,
    fetch = function()
      vim.fn.VSCodeNotify("git.fetch")
    end,
    commit = function()
      vim.fn.VSCodeNotify("git.commit")
    end,
    publish = function()
      vim.fn.VSCodeNotify("git.publish")
    end,
    -- if gitlens installed
    graph = function()
      vim.fn.VSCodeNotify("gitlens.showGraphPage")
    end,
  }

  local fold = {
    toggle = function()
      vim.fn.VSCodeNotify("editor.toggleFold")
    end,
    all = function()
      vim.fn.VSCodeNotify("editor.foldAll")
    end,
    openAll = function()
      vim.fn.VSCodeNotify("editor.unfoldAll")
    end,
    close = function()
      vim.fn.VSCodeNotify("editor.fold")
    end,
    open = function()
      vim.fn.VSCodeNotify("editor.unfold")
    end,
    openRecursive = function()
      vim.fn.VSCodeNotify("editor.unfoldRecursively")
    end,
    blockComment = function()
      vim.fn.VSCodeNotify("editor.foldAllBlockComments")
    end,
    allMarkerRegion = function()
      vim.fn.VSCodeNotify("editor.foldAllMarkerRegions")
    end,
    openAllMarkerRegion = function()
      vim.fn.VSCodeNotify("editor.unfoldAllMarkerRegions")
    end,
  }

  local refactor = {
    showMenu = function()
      vim.fn.VSCodeNotify("editor.action.refactor")
    end,

    wrapTag = function()
      vim.fn.VSCodeNotifyRange("editor.emmet.action.wrapWithAbbreviation", vim.fn.line("v"), vim.fn.line("."), 1)
    end,

    deleteTag = function()
      vim.fn.VSCodeNotify("editor.emmet.action.removeTag")
    end,

    updateTag = function()
      vim.fn.VSCodeNotify("editor.emmet.action.updateTag")
    end,
  }
  --#endregion variable

  --#region keymap

  -- whichkey
  vim.keymap.set({ 'n', 'v' }, "<leader>", whichkey.show)

  -- comment
  vim.keymap.set({ 'n', 'v' }, "<leader>/", comment.selected)

  -- orgainze import
  vim.keymap.set({ 'n' }, "<leader>i", buffer.organizeImport)

  -- show VSCode Editor Command ( Ctrl+Shift+P )
  vim.keymap.set({ 'n', 'v' }, "<leader> ", workbench.showCommands)

  vim.keymap.set({ 'n', 'v' }, "H", workbench.previousEditor)
  vim.keymap.set({ 'n', 'v' }, "L", workbench.nextEditor)

  -- problem
  vim.keymap.set({ 'n' }, "<leader>pl", problem.list)
  vim.keymap.set({ 'n' }, "<leader>pn", problem.next)
  vim.keymap.set({ 'n' }, "<leader>pp", problem.previous)

  -- git
  vim.keymap.set({ 'n' }, "<leader>gb", git.switch)
  vim.keymap.set({ 'n' }, "<leader>gi", git.init)
  vim.keymap.set({ 'n' }, "<leader>gd", git.deleteBranch)
  vim.keymap.set({ 'n' }, "<leader>gf", git.fetch)
  vim.keymap.set({ 'n' }, "<leader>gs", git.status)
  vim.keymap.set({ 'n' }, "<leader>gp", git.pull)
  vim.keymap.set({ 'n' }, "<leader>gg", git.graph)

  -- buffer
  vim.keymap.set({ 'n', 'v' }, "<space>c", buffer.close)
  vim.keymap.set({ 'n', 'v' }, "<space>bc", buffer.close)
  vim.keymap.set({ 'n', 'v' }, "<space>k", buffer.closeOther)
  vim.keymap.set({ 'n', 'v' }, "<space>bk", buffer.closeOther)
  vim.keymap.set({ 'n', 'v' }, "<space>w", buffer.save)
  vim.keymap.set({ 'n', 'v' }, "<space>wa", buffer.saveAll)
  vim.keymap.set({ 'n' }, "<space>bf", buffer.format)
  vim.keymap.set({ 'n' }, "<space>bn", buffer.new)
  vim.keymap.set({ 'n' }, "<space>bt", buffer.showInExplorer)
  vim.keymap.set({ 'n' }, "<space>br", buffer.rename)

  -- toggle
  vim.keymap.set({ 'n', 'v' }, "<leader>ta", toggle.activityBar)
  vim.keymap.set({ 'n', 'v' }, "<leader>tz", toggle.zenMode)
  vim.keymap.set({ 'n', 'v' }, "<leader>ts", toggle.sideBarVisibility)
  vim.keymap.set({ 'n', 'v' }, "<leader>tt", toggle.theme)
  vim.keymap.set({ 'n', 'v' }, "<leader>tl", toggle.breadcrumbs)

  -- refactor
  vim.keymap.set({ 'n' }, "<leader>r", refactor.showMenu)
  vim.keymap.set({ 'n' }, "<leader>rr", symbol.rename)
  vim.keymap.set({ 'n', 'v' }, "<leader>rw", refactor.wrapTag)
  vim.keymap.set({ 'n', 'v' }, "<leader>rd", refactor.deleteTag)
  vim.keymap.set({ 'n', 'v' }, "<leader>ru", refactor.updateTag)

  -- search
  vim.keymap.set({ 'n' }, "<leader>sr", search.reference)
  vim.keymap.set({ 'n' }, "<leader>sR", search.referenceInSideBar)
  vim.keymap.set({ 'n' }, "<leader>sp", search.project)
  vim.keymap.set({ 'n' }, "<leader>st", search.text)
  vim.keymap.set({ 'n' }, "<leader>sf", search.file)

  --folding
  vim.keymap.set({ 'n' }, "zr", fold.openAll)
  vim.keymap.set({ 'n' }, "zO", fold.openRecursive)
  vim.keymap.set({ 'n' }, "zo", fold.open)
  vim.keymap.set({ 'n' }, "zm", fold.all)
  vim.keymap.set({ 'n' }, "zb", fold.blockComment)
  vim.keymap.set({ 'n' }, "zc", fold.close)
  vim.keymap.set({ 'n' }, "zg", fold.allMarkerRegion)
  vim.keymap.set({ 'n' }, "zG", fold.openAllMarkerRegion)
  vim.keymap.set({ 'n' }, "za", fold.toggle)
  --#endregion keymap
else
  -- ordinary Neovim
  vim.opt.tabstop = 2
end
