
-- vim.o to set global options: vim.o.hidden = true
-- vim.bo to set buffer-scoped options: vim.bo.expandtab = true
-- vim.wo to set window-scoped options: vim.wo.number = true

-- Aliases
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

-- Editor
opt.guifont = "FiraCode Nerd Font:h13"
opt.relativenumber = true


-- vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
-- vim.opt.guifont = "Source Code Pro:h12"

-- vim.cmd "colorscheme vorange"
-- vim.cmd "colorscheme lunaperche"

-- require('lualine').setup()

-- if vim.g.neovide then
-- 	vim.g['g:neovide_scale_factor'] = 0.4
--   vim.g['neovide_cursor_animation_length'] = 0.04
-- end

-- Hop Configuration
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})

