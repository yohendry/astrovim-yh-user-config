return {
    colorscheme = "catppuccin-frappe", -- catppuccin | gruvbox-material | vscode | astrotheme

    -- This function is run last and is a good place to configuring
    -- augroups/autocommands and custom filetypes also this just pure lua so
    -- anything that doesn't fit in the normal config locations above can go here
    polish = function()
        local augroup = vim.api.nvim_create_augroup
        local autocmd = vim.api.nvim_create_autocmd

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

        vim.cmd [[ au BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Alpha | endif ]]

        -- fold code

        local vim = vim
        local opt = vim.opt

        opt.foldmethod = "expr"
        opt.foldexpr = "nvim_treesitter#foldexpr()"

        local vim = vim
        local api = vim.api
        local M = {}
        -- function to create a list of commands and convert them to autocommands
        -------- This function is taken from https://github.com/norcalli/nvim_utils
        function M.nvim_create_augroups(definitions)
            for group_name, definition in pairs(definitions) do
                api.nvim_command('augroup ' .. group_name)
                api.nvim_command('autocmd!')
                for _, def in ipairs(definition) do
                    local command = table.concat(vim.tbl_flatten { 'autocmd', def }, ' ')
                    api.nvim_command(command)
                end
                api.nvim_command('augroup END')
            end
        end

        local autoCommands = {
            -- other autocommands
            open_folds = {
                { "BufReadPost,FileReadPost", "*", "normal zR" }
            }
        }

        M.nvim_create_augroups(autoCommands)

        -- end fold code
    end,
}
