-- replace string from file
local function sed(from, to, fname)
  vim.cmd(string.format("silent !sed -i 's/%s/%s/g' %s", from, to, fname))
end

-- reloads xresources for current focused window onl
local function liveReload_xresources()
  vim.cmd(
    string.format "silent !xrdb merge ~/.Xresources && kill -USR1 $(xprop -id $(xdotool getwindowfocus) | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$')"
  )
end

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Dynamic terminal padding with/without nvim (for siduck's st only)
autocmd({ "BufNewFile", "BufRead" }, {
  callback = function(ctx)
    -- remove terminal padding
    -- exclude when nvim has norg ft & more than 2 buffers

    if vim.bo.ft == "norg" or #vim.fn.getbufinfo { buflisted = 1 } > 1 then
      sed("st.borderpx: 20", "st.borderpx: 0", "~/.Xresources")
      liveReload_xresources()

      -- revert xresources change but dont reload it
      sed("st.borderpx: 0", "st.borderpx: 20", "~/.Xresources")

      vim.cmd(string.format "silent !xrdb merge ~/.Xresources")
      vim.api.nvim_del_autocmd(ctx.id)
    end
  end,
})

-- add terminal padding
autocmd("VimLeavePre", {
  callback = function()
    sed("st.borderpx: 0", "st.borderpx: 20", "~/.Xresources")
    liveReload_xresources()
  end,
})

autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.keymap.set("n", "<Esc>", '<cmd> cclose <CR> <cmd> noh <CR>')
  end,
})

augroup("LspAttach_inlayhints", {})
autocmd("LspAttach", {
  group = "LspAttach_inlayhints",
  callback = function(args)
    if not (args.data and args.data.client_id) then
      return
    end

    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    require("lsp-inlayhints").on_attach(client, bufnr)
  end,
})
