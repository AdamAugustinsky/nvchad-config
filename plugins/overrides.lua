local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "javascriptreact",
    "tsx",
    "svelte",
    "c",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "emmet-ls",
    "json-lsp",
    "prettierd",
    "eslint_d",
    "svelte-language-server",
    "vim-language-server",
    "tailwindcss-language-server",

    -- shell
    "shfmt",
    "shellcheck",
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
    require "plugins.configs.telescope"
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
