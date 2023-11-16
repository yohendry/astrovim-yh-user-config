local cmd = vim.api.nvim_create_user_command

cmd(
    "ToggleListchars",
    function()
        vim.opt.expandtab = false
        vim.opt.list = true
        vim.opt.listchars:append({
            tab = '󰄾',
            space = '.'
        })
    end,
    { desc = "Toggle listchars" }
)
