--- This will install copilot.lua and copilot
--- This should not be used in tandem with copilot-cmp module
--- The plugins are created by one of NvChad's member: zbirenbaum :D
--- For more information, read https://github.com/zbirenbaum/copilot.lua
--- Feel free to override the defaults of copilot.lua, using a spec, such as:
--- ```
--- {
---   "zbirenbaum/copilot.lua",
---   opts = function(_, opts --[[NvChad's default opts]])
---     -- Return the modified opts table
---   end,
--- }
--- ```

---@type NvPluginSpec
local spec = {
  {
    "zbirenbaum/copilot.lua",
    event = { "InsertEnter" },
    cmd = { "Copilot" },
    config = function()
      require("copilot").setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<M-Enter>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        panel = {
          enabled = false,
        },
        server_opts_overrides = {
          trace = "verbose",
          settings = {
            advanced = {
              listCount = 3, -- #completions for panel  listCount = 3,          -- #completions for panel  listCount = 3,          -- #completions for panel
              inlineSuggestCount = 3, -- #completions for getCompletions
            },
          },
        },
      }
    end,
  },
  {
    "hrsh7th/cmp-copilot",
    after = "nvim-cmp",
  },
}

return spec
