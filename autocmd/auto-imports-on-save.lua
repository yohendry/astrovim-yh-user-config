add_buffer_autocmd("lsp_auto_format", bufnr, {
    events = "BufWritePre",
    desc = "autoformat on save",
    callback = function()
        vim.cmd [[:Alpha]]
    end,
})


local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
-- show alpha on empty buffers
-- vim.cmd [[ au BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Alpha | endif ]]
local function get_listed_buffers()
    local buffers = {}
    local len = 0
    for buffer = 1, vim.fn.bufnr('$') do
        if vim.fn.buflisted(buffer) == 1 then
            len = len + 1
            buffers[len] = buffer
        end
    end

    return buffers
end


--#region

augroup('on_save', { clear = true })
autocmd('User', {
    pattern = 'BufWritePre',
    group = 'on_save',
    callback = function(event)
        vim.cmd [[:TypescriptOrganizeImpors<CR>]]
    end,
})

-- custom
augroup('alpha_on_empty', { clear = true })
autocmd('User', {
    pattern = 'BDeletePre',
    group = 'alpha_on_empty',
    callback = function(event)
        local found_non_empty_buffer = false
        local buffers = get_listed_buffers()

        for _, bufnr in ipairs(buffers) do
            if not found_non_empty_buffer then
                local name = vim.api.nvim_buf_get_name(bufnr)
                local ft = vim.api.nvim_buf_get_option(bufnr, 'filetype')

                if bufnr ~= event.buf and name ~= '' and ft ~= 'Alpha' then
                    found_non_empty_buffer = true
                end
            end
        end

        if not found_non_empty_buffer then
            require 'neo-tree'.close_all()
            vim.cmd [[:Alpha]]
        end
    end,
})
