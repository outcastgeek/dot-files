
-- Setup nvim-cmp.
local status_ok, npairs = pcall(require, "zig.vim")
if not status_ok then
	return
end

vim.g["zig_fmt_autosave"] = 1

