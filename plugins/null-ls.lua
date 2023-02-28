local present, null_ls = pcall(require, "null-ls")


if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettierd.with { filetypes = { "html", "markdown", "css", "svelte", "javascript", "typescript" } }, -- so prettier works only on these filetypes
  b.code_actions.eslint_d.with { filetypes = { "html", "markdown", "css", "svelte", "javascript", "typescript" } },

  -- Lua
  b.formatting.stylua,
}

null_ls.setup {
  debug = true,
  sources = sources,
}

return null_ls
