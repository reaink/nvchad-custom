local present, diffview = pcall(require, "diffview")

if not present then
  return
end

local options = {
  hooks = {
    diff_buf_win_enter = function(bufnr, winid, ctx)
      if ctx.layout_name:match "^diff2" then
        if ctx.symbol == "a" then
          vim.opt_local.winhl = table.concat({
            "DiffChange:DiffAddAsDelete",
            "DiffText:DiffDeleteText",
          }, ",")
        elseif ctx.symbol == "b" then
          vim.opt_local.winhl = table.concat({
            "DiffChange:DiffAdd",
            "DiffText:DiffAddText",
          }, ",")
        end
      end
    end,
  },
}

diffview.setup(options)
