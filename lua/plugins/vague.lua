return {
  "vague2k/vague.nvim",
  config = function()
    require("vague").setup({
      style = {
        comments = "none",
        strings = "none",
      },
colors = {
  background = "#000000", -- Almost black
  pmenu = "#000000",
  pmenusel = "#000000",
}
    })
    
    -- Add this line after setup
    vim.cmd([[colorscheme vague]])
  end
}
