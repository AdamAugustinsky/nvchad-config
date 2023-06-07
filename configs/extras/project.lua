---@type NvPluginSpec
local spec = {
  {
    "ahmedkhalf/project.nvim",
    -- cmd = { "LazyGit" },
    config = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
}

return spec
