if vim.g.vscode then
  -- In VSCode: <Space>e focuses/opens the native Explorer instead of NvimTree
  vim.keymap.set('n', '<Space>e', function()
    require('vscode').action('workbench.view.explorer')
  end, { silent = true })
  return
end

local nvim_tree = require("nvim-tree")
nvim_tree.setup {
    sort_by = "name",
    renderer = { root_folder_label = false } ,
    git = { ignore = false },
    view = {
        width = 30,
        side = "right",
        preserve_window_proportions = true
    },
}


vim.keymap.set('n', '<Space>e', ':NvimTreeToggle<CR>')