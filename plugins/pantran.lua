local present, pantran = pcall(require, "pantran")

if not present then
  return
end

local options = {
  default_engine = "google",
  engines = {
    google = {
      default_target = "zh-CN",
      fallback = {
        default_target = "zh-CN",
      },
    },
  },
}

pantran.setup(options)
