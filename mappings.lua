return {
  n = {
    ["<leader>fp"] = {
      function()
        require 'telescope'.extensions.projects.projects {}
      end,
      desc = "Projects",
    },
    ["<leader>ff"] = { ":Telescope find_files<CR>", desc = "Find Files" },
    ["<leader>fr"] = { function() require("telescope.builtin").oldfiles() end, desc = "Find Recents" },
    ["<leader>fT"] = { ":TodoTelescope<CR>", desc = "Find TODO's" },
    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" }, -- change description but the same command
    ["<leader>'"] = { "ciw''<Esc>P", desc = "surround word ''" },
    ['<leader>"'] = { 'ciw""<Esc>P', desc = 'surround word ""'},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<leader>'"] = { "c''<Esc>P", desc = "surround selection ''" },
    ['<leader>"'] = { 'c""<Esc>P', desc = 'surround selection ""' },
  }
}
