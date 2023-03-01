local present, octo = pcall(require, "octo")

if not present then
  return
end

local options = {
  ssh_aliases = {},
}

octo.setup(options)
