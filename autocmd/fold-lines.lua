local opt = vim.opt
local api = vim.api

-- fold code
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

-- function to create a list of commands and convert them to autocommands
-------- This function is taken from https://github.com/norcalli/nvim_utils
local function nvim_create_augroups(definitions)
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

nvim_create_augroups(autoCommands)
