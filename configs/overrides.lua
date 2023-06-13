local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "ocaml",
    "ocaml_interface",
    "tsx",
    "svelte",
    "c",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  view = {
    side = "right",
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true,
  },
}

M.telescope = {
  config = function()
    require "custom.plugins.telescope"
  end,
  extensions = {
    project = {
      -- base_dirs = {
      --   "~/dev/src",
      --   { "~/dev/src2" },
      --   { "~/dev/src3", max_depth = 4 },
      --   { path = "~/dev/src4" },
      --   { path = "~/dev/src5", max_depth = 2 },
      -- },
      hidden_files = true, -- default: false
      theme = "dropdown",
      order_by = "asc",
      search_by = "title",
      sync_with_nvim_tree = true, -- default false
    },
  },
}

return M
