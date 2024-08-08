-- ~/.config/nvim/after/plugin/lsp.lua

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "gopls",
        "pyright",
        "clangd",
        "tsserver",
        "eslint",
        "rust_analyzer"
    }
})

-- LSP Zero setup
local lsp = require("lsp-zero").preset({
    name = 'recommended',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = true,
})

-- CMP setup
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<S-Up>'] = cmp.mapping.scroll_docs(-4),
    ['<S-Down>'] = cmp.mapping.scroll_docs(4),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
})

cmp.setup({
    mapping = cmp_mappings,
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    })
})

-- LSP settings
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'gopls',
})

-- LSP preferences
lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    },
})

-- Common on_attach function for LSP servers
local on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "<F12>", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<Space>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<Space>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "]g", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "[g", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<Space>la", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<Space>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
end

-- Server-specific setups
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lsp.configure('pyright', {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        pyright = {
            autoImportCompletion = true,
        },
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = 'openFilesOnly',
                useLibraryCodeForTypes = true,
                typeCheckingMode = 'off',
            }
        }
    }
})

lsp.configure('clangd', {
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "h", "c", "cpp", "cc", "objc", "objcpp"},
    cmd = {"clangd", "--background-index"},
    single_file_support = true,
    root_dir = require('lspconfig/util').root_pattern(
          '.clangd',
          '.clang-tidy',
          '.clang-format',
          'compile_commands.json',
          'compile_flags.txt',
          'configure.ac',
          '.git'
        ),
})

lsp.configure('intelephense', {
    cmd = { "intelephense", "--stdio" },
    filetypes = { "php" },
    root_dir = function (pattern)
        local cwd  = vim.loop.cwd();
        local root = require('lspconfig/util').root_pattern("composer.json", ".git")(pattern);
        return require('lspconfig/util').path.is_descendant(cwd, root) and cwd or root;
    end,
})

lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'},
            },
        },
    },
})

lsp.configure('tsserver', {})

lsp.configure('dockerls', {
    before_init = function(params)
        params.processId = vim.NIL
    end,
    cmd = {"docker-langserver", "--stdio"},
    filetypes = { "dockerfile" },
    root_dir = require('lspconfig/util').root_pattern(".git", vim.fn.getcwd()),
})

lsp.configure('gopls', {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        gopls = {
            analyses = {
                assign = true,
                atomic = true,
                bools = true,
                composites = true,
                copylocks = true,
                deepequalerrors = true,
                embed = true,
                errorsas = true,
                fieldalignment = true,
                httpresponse = true,
                ifaceassert = true,
                loopclosure = true,
                lostcancel = true,
                nilfunc = true,
                nilness = true,
                nonewvars = true,
                printf = true,
                shadow = true,
                shift = true,
                simplifycompositelit = true,
                simplifyrange = true,
                simplifyslice = true,
                sortslice = true,
                stdmethods = true,
                stringintconv = true,
                structtag = true,
                testinggoroutine = true,
                tests = true,
                timeformat = true,
                unmarshal = true,
                unreachable = true,
                unsafeptr = true,
                unusedparams = true,
                unusedresult = true,
                unusedvariable = true,
                unusedwrite = true,
                useany = true,
            },
            hoverKind = "FullDocumentation",
            linkTarget = "pkg.go.dev",
            usePlaceholders = true,
            vulncheck = "Imports",
        },
    },
})

-- Apply the setup
lsp.setup()

