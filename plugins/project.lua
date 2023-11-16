return {
    {
        "jay-babu/project.nvim",
        event = "VeryLazy",
        main = "project_nvim",
        opts = {
            ignore_lsp = { "lua_ls" },
            show_hidden = true
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        optional = true,
        dependencies = { "jay-babu/project.nvim" },
        opts = function() require("telescope").load_extension "projects" end,
    }
}