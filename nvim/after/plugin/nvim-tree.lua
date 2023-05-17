local nvim_tree = require("nvim-tree")
nvim_tree.setup {
    sort_by = "name",
    renderer = { root_folder_label = false } ,
    view = {
        width = 30,
        side = "right",
        preserve_window_proportions = true,
        mappings = {
            custom_only = false,
            list = {
                -- user mappings go here
            },
        },
    },
}


vim.keymap.set('n', '<Space>e', ':NvimTreeToggle<CR>')
