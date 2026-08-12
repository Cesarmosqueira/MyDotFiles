if vim.g.vscode then return end

-- Glow markdown preview - opens in floating window
require('glow').setup({
    style = 'dark',
    width = 100,
    height = 30,
})

-- Simple toggle - press <Space>m to preview, q to close and back to source
vim.keymap.set('n', '<Space>m', ':Glow<CR>', { noremap = true, silent = true })