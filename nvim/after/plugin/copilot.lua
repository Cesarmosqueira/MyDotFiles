if vim.g.vscode then return end

-- Disable default Tab mapping so it doesn't conflict
vim.g.copilot_no_tab_map = true

-- Accept suggestion: Ctrl+A
vim.keymap.set('i', '<C-a>', 'copilot#Accept("")', {
    expr = true,
    replace_keycodes = false,
    silent = true,
})

-- Next / previous suggestion (default keys)
vim.keymap.set('i', '<M-]>', '<Plug>(copilot-next)', { silent = true })
vim.keymap.set('i', '<M-[>', '<Plug>(copilot-previous)', { silent = true })

-- Dismiss suggestion
vim.keymap.set('i', '<C-]>', '<Plug>(copilot-dismiss)', { silent = true })