local create_cmd = vim.api.nvim_create_user_command

create_cmd("EnableAutosave", function()
  require('packer').loader('auto-save.nvim')
end, {})
