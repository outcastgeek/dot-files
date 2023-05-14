
local lspconfig = require('lspconfig')
local on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    require('completion').on_attach()
end
local servers = {'zls'}
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
    }
end

-- Set completeopt to have a better completion experience"
--set completeopt=menuone,noinsert,noselect -- REVISIT THIS!!!! https://install.zigtools.org/
-- Enable completions as you type
--let g:completion_enable_auto_popup = 1 -- REVISIT THIS!!!! https://install.zigtools.org/

