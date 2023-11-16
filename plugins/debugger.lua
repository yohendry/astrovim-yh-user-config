return {}

-- return {
--     { "mxsdev/nvim-dap-vscode-js",                       dependencies = { "mfussenegger/nvim-dap" } },
--     {
--         "microsoft/vscode-js-debug",
--         lazy = true,
--         dependencies = { "mxsdev/nvim-dap-vscode-js" },
--         tag = "v1.74.1",
--         build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
--         config = function()
--             require("astronvim.utils").notify("dap-vscode-js", 2, { title = 'EL MALDITO DEBUGGER' })
--             require("dap-vscode-js").setup({
--                 -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
--                 debugger_path = vim.fn.stdpath('data') .. '/lazy/vscode-js-debug',                 -- Path to vscode-js-debug installation.
--                 -- debugger_cmd = { "js-debug-adapter" },                                                           -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
--                 adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
--                 log_file_path = vim.fn.stdpath('data') .. "/dap_vscode_js.log",                    -- Path for file logging
--                 log_file_level = true,                                                             -- Logging level for output to file. Set to false to disable file logging.
--                 log_console_level = vim.log.levels
--                 .INFO                                                                              -- Logging level for output to console. Set to false to disable console output.
--             })


--             for _, language in ipairs({ "typescript", "javascript" }) do
--                 require("astronvim.utils").notify("dap setting: " .. language)
--                 require("dap").configurations[language] = require "plugins.configs.vscode-debugger-launch"
--             end

--             require("astronvim.utils").notify "dap-vscode-js end"
--         end
--     },
-- }