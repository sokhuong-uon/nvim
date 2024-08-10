--#region variable
local whichkey = {
  show = function()
    vim.fn.VSCodeNotify("whichkey.show")
  end
}

local comment = {
  selected = function()
    vim.fn.VSCodeNotify("editor.action.commentLine")
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

  quickFix = function()
    vim.fn.VSCodeNotify("editor.action.quickFix")
  end,
}

local file = {
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

  copyPathToClipboard = function()
    vim.fn.VSCodeNotify("workbench.action.files.copyPathOfActiveFile")
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

  sidebar = function()
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

local search = {
  reference = function()
    vim.fn.VSCodeNotify("editor.action.referenceSearch.trigger")
  end,

  symbols = function()
    vim.fn.VSCodeNotify("workbench.action.gotoSymbol")
  end,

  referenceInSideBar = function()
    vim.fn.VSCodeNotify("references-view.find")
  end,

  selected = function()
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
  -- gitlens installed
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

  gotoParentFold = function()
    vim.fn.VSCodeNotify("editor.gotoParentFold")
  end,
}

local refactor = {
  showMenu = function()
    vim.fn.VSCodeNotify("editor.action.refactor")
  end,

  rename = function()
    vim.fn.VSCodeNotify("editor.action.rename")
  end,

  html = {
    wrap = function()
      vim.fn.VSCodeNotify("editor.emmet.action.wrapWithAbbreviation")
    end,

    delete = function()
      vim.fn.VSCodeNotify("editor.emmet.action.removeTag")
    end,

    update = function()
      vim.fn.VSCodeNotify("editor.emmet.action.updateTag")
    end,
  },

  organizeImport = function()
    vim.fn.VSCodeNotify("editor.action.organizeImports")
  end
}

local gitGoto = {
  nextChange = function()
    vim.fn.VSCodeNotify("workbench.action.editor.nextChange")
  end,

  showNextChange = function()
    vim.fn.VSCodeNotify("editor.action.dirtydiff.next")
  end,

  previousChange = function()
    vim.fn.VSCodeNotify("workbench.action.editor.previousChange")
  end,

  showPreviousChange = function()
    vim.fn.VSCodeNotify("editor.action.dirtydiff.previous")
  end,

  revertChange = function()
    vim.fn.VSCodeNotify("git.revertSelectedRanges")
  end
}
--#endregion variable

local vscodeCustomCommands = {
  whichkey = whichkey,
  comment = comment,
  refactor = refactor,
  fold = fold,
  git = git,
  problem = problem,
  search = search,
  toggle = toggle,
  workbench = workbench,
  file = file,
  gitGoto = gitGoto
}

return vscodeCustomCommands
