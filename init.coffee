# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

shell = require 'shell'

# Close Find Results with keyboard
atom.commands.add 'atom-workspace', 'find-and-replace:close-results', ->
  itemUri = 'atom://find-and-replace/project-results'
  pane = atom.workspace.paneForUri(itemUri)
  pane?.destroyItem(pane.itemForUri(itemUri))
  unless pane?.getItems().length
    pane.destroy()
