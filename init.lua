-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.options")
-- monokai setup
-- setup must be called before loading the colorscheme
-- Default options:
require("monokai").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = false,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = true,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "",  -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})
vim.cmd("colorscheme monokai")
vim.o.background = "dark"
vim.cmd([[colorscheme monokai]])

require('nvim-treesitter.configs').setup {
  -- ... other configurations ...
  install = {
    -- ... other install configurations ...
    compilers = { "zig", "cl", "gcc", "clang" }, -- Your preferred order of compilers
  },
}