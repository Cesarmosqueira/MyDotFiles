
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

-- Copy selected text to system clipboard
vim.api.nvim_set_keymap('v', '<C-s>', '"+y', { noremap = true })


-- function ToggleShowTabline()
--   if vim.o.showtabline == 0 then
--     vim.o.showtabline = 2
--   else
--     vim.o.showtabline = 0
--   end
-- end
-- vim.api.nvim_set_keymap('n', '<F2>', ':lua ToggleShowTabline()<CR>', { noremap = true, silent = true })

