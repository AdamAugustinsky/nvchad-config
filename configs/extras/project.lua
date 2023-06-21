---@type NvPluginSpec
local spec = {
  {
    "ahmedkhalf/project.nvim",
    cmd = { "Telescope" },
    config = function()
      local project = require "project_nvim"
      project.setup {

        -- detection_methods = { "lsp", "pattern" }, -- NOTE: lsp detection will get annoying with multiple langs in one project
        detection_methods = { "pattern" },

        -- patterns used to detect root dir, when **"pattern"** is in detection_methods
        patterns = { ".git", "Makefile", "package.json" },
      }

      local telescope = require "telescope"
      telescope.load_extension "projects"
    end,
    init = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
    dependencies = {
      {
        "nvim-telescope/telescope.nvim",
        event = "Bufenter",
        cmd = { "Telescope" },
      },
    },
  },
}

return spec
