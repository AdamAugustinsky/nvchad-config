---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gg"] = { ":LazyGit<CR>", "open LazyGit in a floating terminal window", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
