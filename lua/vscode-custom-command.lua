local vscode = require('vscode')

--#region variable
local whichkey = {
  show = function()
    vscode.action("whichkey.show")
  end
}

local comment = {
  selected = function()
    vscode.action("editor.action.commentLine")
  end
}

local multiCursor = function()
  vscode.with_insert(function()
    vscode.action("editor.action.addSelectionToNextFindMatch")
  end)
end

local problem = {
  list = function()
    vscode.action("workbench.actions.view.problems")
  end,

  next = function()
    vscode.action("editor.action.marker.next")
  end,

  previous = function()
    vscode.action("editor.action.marker.prev")
  end,

  quickFix = function()
    vscode.action("editor.action.quickFix")
  end,
}

local file = {
  new = function()
    vscode.action("workbench.explorer.fileView.focus")
    vscode.action("explorer.newFile")
  end,

  save = function()
    vscode.action("workbench.action.files.save")
  end,

  saveAll = function()
    vscode.action("workbench.action.files.saveAll")
  end,

  format = function()
    vscode.action("editor.action.formatDocument")
  end,

  showInExplorer = function()
    vscode.action("workbench.files.action.showActiveFileInExplorer")
  end,

  copyPathToClipboard = function()
    vscode.action("workbench.action.files.copyPathOfActiveFile")
  end,

  rename = function()
    vscode.action("workbench.files.action.showActiveFileInExplorer")
    vscode.action("renameFile")
  end,

  close = function()
    vscode.action("workbench.action.closeActiveEditor")
  end,

  closeOther = function()
    vscode.action("workbench.action.closeOtherEditors")
  end
}

local workbench = {
  showCommands = function()
    vscode.action("workbench.action.showCommands")
  end,
  previousEditor = function()
    vscode.action("workbench.action.previousEditor")
  end,
  nextEditor = function()
    vscode.action("workbench.action.nextEditor")
  end,
}

local toggle = {
  activityBar = function()
    vscode.action("workbench.action.toggleActivityBarVisibility")
  end,

  sidebar = function()
    vscode.action("workbench.action.toggleSidebarVisibility")
  end,

  zenMode = function()
    vscode.action("workbench.action.toggleZenMode")
  end,

  theme = function()
    vscode.action("workbench.action.selectTheme")
  end,

  breadcrumbs = function()
    vscode.action("breadcrumbs.toggle")
  end,
}

local search = {
  reference = function()
    vscode.action("editor.action.referenceSearch.trigger")
  end,

  symbols = function()
    vscode.action("workbench.action.gotoSymbol")
  end,

  referenceInSideBar = function()
    vscode.action("references-view.find")
  end,

  selected = function()
    vscode.action("editor.action.addSelectionToNextFindMatch")
    vscode.action("workbench.action.findInFiles")
  end,

  text = function()
    vscode.action("workbench.action.findInFiles")
  end,

  file = function()
    vscode.action("workbench.action.quickOpen")
  end,
}

local git = {
  init = function()
    vscode.action("git.init")
  end,
  status = function()
    vscode.action("workbench.view.scm")
  end,
  switch = function()
    vscode.action("git.checkout")
  end,
  deleteBranch = function()
    vscode.action("git.deleteBranch")
  end,
  push = function()
    vscode.action("git.push")
  end,
  pull = function()
    vscode.action("git.pull")
  end,
  fetch = function()
    vscode.action("git.fetch")
  end,
  commit = function()
    vscode.action("git.commit")
  end,
  publish = function()
    vscode.action("git.publish")
  end,
  -- gitlens installed
  graph = function()
    vscode.action("gitlens.showGraphPage")
  end,
}

local fold = {
  toggle = function()
    vscode.action("editor.toggleFold")
  end,
  all = function()
    vscode.action("editor.foldAll")
  end,
  openAll = function()
    vscode.action("editor.unfoldAll")
  end,
  close = function()
    vscode.action("editor.fold")
  end,
  open = function()
    vscode.action("editor.unfold")
  end,
  openRecursive = function()
    vscode.action("editor.unfoldRecursively")
  end,
  blockComment = function()
    vscode.action("editor.foldAllBlockComments")
  end,
  allMarkerRegion = function()
    vscode.action("editor.foldAllMarkerRegions")
  end,
  openAllMarkerRegion = function()
    vscode.action("editor.unfoldAllMarkerRegions")
  end,

  gotoParentFold = function()
    vscode.action("editor.gotoParentFold")
  end,
}

local refactor = {
  showMenu = function()
    vscode.action("editor.action.refactor")
  end,

  rename = function()
    vscode.action("editor.action.rename")
  end,

  html = {
    wrap = function()
      vscode.action("editor.emmet.action.wrapWithAbbreviation")
    end,

    delete = function()
      vscode.action("editor.emmet.action.removeTag")
    end,

    update = function()
      vscode.action("editor.emmet.action.updateTag")
    end,
  },

  organizeImport = function()
    vscode.action("editor.action.organizeImports")
  end
}

local gitGoto = {
  nextChange = function()
    vscode.action("workbench.action.editor.nextChange")
  end,

  showNextChange = function()
    vscode.action("editor.action.dirtydiff.next")
  end,

  previousChange = function()
    vscode.action("workbench.action.editor.previousChange")
  end,

  showPreviousChange = function()
    vscode.action("editor.action.dirtydiff.previous")
  end,

  revertChange = function()
    vscode.action("git.revertSelectedRanges")
  end
}
--#endregion variable

local vscodeCustomCommands = {
  whichkey = whichkey,
  comment = comment,
  multiCursor = multiCursor,
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
