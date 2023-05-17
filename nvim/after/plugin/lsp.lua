require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "gopls",
        "pyright"
    }
})

local lsp = require("lsp-zero")
local cmp = require('cmp')
local lspconfig = require('lspconfig')

local capabilities = require("cmp_nvim_lsp").default_capabilities()




local cmp_setup = {
    mapping = cmp.mapping.preset.insert({
        ['<S-Up>'] = cmp.mapping.scroll_docs(-4),
        ['<S-Down>'] = cmp.mapping.scroll_docs(4),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
    }, {
        { name = 'buffer' },
    })
}


lsp.preset("recommended")
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'gopls',
})
lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    },
})

local on_attach = function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "<F12>", function() vim.lsp.buf.definition() end, opts)

    vim.keymap.set("n", "K", function() vim.lsp.bduf.hover() end, opts)
    vim.keymap.set("n", "<Space>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<Space>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "]g", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "[g", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<Space>la", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<Space>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
end

lsp.on_attach(on_attach)

lspconfig.pyright.setup {
    on_attach = on_attach,
    settings = {
        pyright = { autoImportCompletion = true, },
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = 'openFilesOnly',
                useLibraryCodeForTypes = true,
                typeCheckingMode = 'off'
            }
        }
    }
}

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
    },
  },
}

lspconfig.tsserver.setup {
}

lspconfig.dockerls.setup {
  before_init = function(params)
    params.processId = vim.NIL
  end,
  cmd = {"docker-langserver", "--stdio"},
  filetypes = { "dockerfile" },
  root_dir = require'lspconfig/util'.root_pattern(".git", vim.fn.getcwd()),
}

lspconfig.gopls.setup {
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
}


cmp.setup(cmp_setup)

lsp.setup()
