local lspconfig = require('lspconfig')
local cmp = require('cmp')
local luasnip = require('luasnip')

-- Add LSP capabilities to nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- LSP settings for TypeScript, JavaScript, and React
lspconfig.ts_ls.setup({
  capabilities = capabilities,
  on_attach = function(client, bufnr)
	  vim.api.nvim_create_autocmd("BufWritePre", {
		  group = vim.api.nvim_create_augroup("Format", { clear = true }),
		  buffer = bufnr,
		  callback = function() vim.lsp.buf.format({async = false}) end
	  })
	  vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
	  vim.keymap.set('n', 'K', vim.lsp.buf.hover)
	  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
	  vim.keymap.set('n', 'go', vim.lsp.buf.type_definition)
	  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
	  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
	  vim.keymap.set('n', '<leader>sd', vim.diagnostic.open_float)
	  vim.keymap.set('n', '<leader>ld', vim.diagnostic.goto_prev)
	  vim.keymap.set('n', '<leader>nd', vim.diagnostic.goto_next)
	  -- Get references
	  vim.keymap.set('n', 'gr', vim.lsp.buf.references)

  end,
})

-- Optionally, add JSON and HTML support for web development
lspconfig.jsonls.setup({
  capabilities = capabilities,
})
lspconfig.html.setup({
  capabilities = capabilities,
})

-- Configure nvim-cmp
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  sources = {
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
})


