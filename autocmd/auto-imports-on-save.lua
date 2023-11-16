local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup('on_save', { clear = true })
autocmd('User', {
    pattern = 'BufWritePre',
    group = 'on_save',
    callback = function(event)
        vim.cmd [[:TypescriptOrganizeImpors<CR>]]
    end,
})