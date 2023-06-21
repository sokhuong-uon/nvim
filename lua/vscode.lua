local vscode = {}

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
      vim.fn.VSCodeNotifyRange("editor.emmet.action.wrapWithAbbreviation", vim.fn.line("v"), vim.fn.line("."), 1)
    end,

    delete = function()
      vim.fn.VSCodeNotify("editor.emmet.action.removeTag")
    end,

    update = function()
      vim.fn.VSCodeNotify("editor.emmet.action.updateTag")
    end,
  }
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
}
--#endregion variable

vscode.whichkey = whichkey
vscode.comment = comment
vscode.refactor = refactor
vscode.fold = fold
vscode.git = git
vscode.problem = problem
vscode.search = search
vscode.toggle = toggle
vscode.workbench = workbench
vscode.buffer = buffer
vscode.gitGoto = gitGoto

return vscode
