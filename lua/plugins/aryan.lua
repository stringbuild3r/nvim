
return {
  {
    "neovim/nvim-base16",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme vim]])
    end,
  },
}
