---@type MappingsConfig
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gg"] = { ":LazyGit<CR>", "open LazyGit in a floating terminal window", opts = { nowait = true } },
    ["<leader>ps"] = { ":PackerSync<CR>", "PackerSync", opts = { nowait = true } },
    ["<leader>gd"] = { ":DiffviewFileHistory<CR>", "[G]it [D]iff", opts = { nowait = true } },
    ["<leader>fd"] = { ":DiffviewFileHistory %<CR>", "Git [F]ile [D]iff", opts = { nowait = true } },
    ["<leader>gc"] = { ":DiffviewClose<CR>", "Diffview Close", opts = { nowait = true } },
    ["<C-Space>"] = { ":Copilot panel<CR>", "Copilot Panel", opts = { nowait = true } },
    -- ["<leader>P"] = {
    --   ":lua require'telescope'.extensions.projects.projects{}<CR>",
    --   "recently opened projects in telescope",
    -- },
  },
  i = {
    ["<M-Enter>"] = { 'copilot#Accept("<CR>")', "Copilot Accept", opts = { expr = true, silent = true } },
  },
}

M.telescope = {
  plugin = true,

  n = {
    ["<leader>P"] = {
      "<cmd> lua require'telescope'.extensions.projects.projects{}<CR>",
      "recently opened projects in telescope",
    },
    -- -- find
    -- ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "find files" },
    -- ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "find all" },
    -- ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    -- ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
    -- ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "help page" },
    -- ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
    -- ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "show keys" },
    --
    -- -- git
    -- ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
    -- ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "git status" },
    --
    -- -- pick a hidden term
    -- ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "pick hidden term" },
    --
    -- -- theme switcher
    -- ["<leader>th"] = { "<cmd> Telescope themes <CR>", "nvchad themes" },
  },
}

-- more keybinds!

return M
