
-- local colorscheme = "default"
-- local colorscheme = "lunaperche"
local colorscheme = "vorange"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

-- local airline_theme = "kalisi"
-- local airline_theme = "luna"
-- 
-- local status_ok, _ = pcall(vim.cmd, "AirlineTheme " .. airline_theme)
-- if not status_ok then
--   vim.notify("AirlineTheme " .. airline_theme .. " not found!")
--   return
-- end

