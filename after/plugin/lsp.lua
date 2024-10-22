local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({
    buffer = bufnr,
    preserve_mappings = false
  })
end)

lsp.ensure_installed({
  'ts_ls',
	'rust_analyzer',
  'dockerls'
})

lsp.format_on_save({
	servers = {
		['rust_analyzer'] = { 'rust' },
	}
})

local icons = require('configs.icons')
local cmp = require('cmp')
local cmp_select = { behaviour = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<cr>"] = cmp.mapping.confirm({ select = true})
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

-- lsp.set_sign_icons({
-- 	error = icons.diagnostics.BoldError,
-- 	warn = icons.diagnostics.BoldWarning,
-- 	hint = icons.diagnostics.BoldHint,
-- 	info = icons.diagnostics.BoldInformation,
-- })

local signs = {
	Error = icons.diagnostics.BoldError,
	Warn = icons.diagnostics.BoldWarning,
	Hint = icons.diagnostics.BoldHint,
	Info = icons.diagnostics.BoldInformation,
}

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

lsp.setup()

