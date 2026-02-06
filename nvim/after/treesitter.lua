local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then return end

-- make keywords / function names pop a bit
vim.api.nvim_set_hl(0, "@keyword.python", { bold = true })
vim.api.nvim_set_hl(0, "@function.python", { bold = true })

-- make types/constructors slightly distinct
vim.api.nvim_set_hl(0, "@type.python", { italic = true })
vim.api.nvim_set_hl(0, "@constructor.python", { italic = true })

-- optional: soften comments for readability
vim.api.nvim_set_hl(0, "@comment.python", { italic = true })


configs.setup({
  ensure_installed = { "python", "lua", "vim", "vimdoc", "query" },
  auto_install = true,
  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    disable = function(_, buf)
      local max_filesize = 200 * 1024
      local ok2, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok2 and stats and stats.size > max_filesize then return true end
    end,
  },

  indent = { enable = true },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      node_decremental = "<BS>",
      scope_incremental = "<TAB>",
    },
  },
})

