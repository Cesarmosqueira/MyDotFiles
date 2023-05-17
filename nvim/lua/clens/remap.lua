
vim.api.nvim_set_keymap('n', '<C-c>', ':noh<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<C-j>', ':resize +1<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<C-k>', ':resize -1<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<C-h>', ':vertical resize -1<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<C-l>', ':vertical resize +1<CR>', {silent=true})
vim.api.nvim_set_keymap('n', '<C-S-Down>', '<C-w>j', {silent=true})
vim.api.nvim_set_keymap('n', '<C-S-Up>', '<C-w>k', {silent=true})
vim.api.nvim_set_keymap('n', '<C-S-Right>', '<C-w>l', {silent=true})
vim.api.nvim_set_keymap('n', '<C-S-Left>', '<C-w>h', {silent=true})


vim.api.nvim_set_keymap("n", "<Space>e", ':NvimTreeToggle', {silent=true})
