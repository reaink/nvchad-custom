local present, neural = pcall(require, "neural")

if not present then
  return
end

local options = {
  open_ai = {
    api_key = "YOUR_API_KEY",
  },
  ui = {
    icon = " ",
  },
}

neural.setup(options)
