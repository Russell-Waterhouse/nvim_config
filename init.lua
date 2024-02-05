require('config.core.options')
require('config.core.remap')

require("config.lazy")

require('config.after.config')
require('config.after.telescope')
require('config.after.treesitter')
require('config.after.theme')
require('config.after.lsp')
require('config.after.comment')
-- Lualine has to be last or else colours don't appear for some reason
require('config.after.lualine')

