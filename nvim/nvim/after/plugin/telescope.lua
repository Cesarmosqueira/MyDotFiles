local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Space>f', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<Space>d', builtin.diagnostics, {})
vim.keymap.set('n', '<Space>b', builtin.buffers, {})
vim.keymap.set('n', '<Space>sf', function()
	builtin.grep_string({ search = vim.fn.input("Search for: ") });
end)

