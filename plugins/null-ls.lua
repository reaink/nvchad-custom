local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local extensions = {
  javascript = "js",
  javascriptreact = "jsx",
  json = "json",
  jsonc = "jsonc",
  markdown = "md",
  typescript = "ts",
  typescriptreact = "tsx",
}

local sources = {
  -- Lua
  b.formatting.stylua,

  -- TypeScript, JavaScript
  b.code_actions.eslint_d,
  b.formatting.deno_fmt.with {
    args = function(params)
      return {
        "fmt",
        "-",
        "--ext",
        extensions[params.ft],
        "--options-line-width",
        80,
        "--options-indent-width",
        vim.bo[params.bufnr].shiftwidth,
      }
    end,
  },

  -- Spell
  -- b.diagnostics.cspell,
  -- b.code_actions.cspell,

  -- Markdown
  b.diagnostics.markdownlint,
  b.formatting.markdownlint,

  -- Python
  b.diagnostics.pylama,

  -- cpp
  b.formatting.clang_format,

  -- Rust
  b.formatting.rustfmt,

  -- Go
  b.formatting.goimports,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
