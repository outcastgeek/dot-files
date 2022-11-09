
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("user.utilities.autopairs")
require("user.utilities.bufferline")
require("user.utilities.comment")
require("user.utilities.gitsigns")
require("user.utilities.project")
require("user.utilities.zig")

