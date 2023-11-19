return {
    colorscheme = "material", -- catppuccin | gruvbox-material | vscode | astrotheme

    -- This function is run last and is a good place to configuring
    -- augroups/autocommands and custom filetypes also this just pure lua so
    -- anything that doesn't fit in the normal config locations above can go here
    polish = function()
        require("user.autocmd")

        local function visual_paste_without_yank()
            vim.fn.setreg('x', vim.fn.getreg('*'))
            vim.api.nvim_paste(vim.fn.getreg('*'), {}, -1)
            vim.fn.setreg('*', vim.fn.getreg('x'))
        end
        vim.keymap.set('v', 'p', visual_paste_without_yank, { noremap = true, silent = true })
    end,
}
