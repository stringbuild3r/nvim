return {
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup {
        -- optional configuration here
      }
      -- Set VertSplit color to black and remove italics
      vim.cmd[[highlight VertSplit guifg=black guibg=NONE gui=NONE cterm=NONE]]
    end,
  },
}

