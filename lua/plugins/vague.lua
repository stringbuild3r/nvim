return {
   "vague2k/vague.nvim",
  config = function()
    require("vague").setup({
      style = {
        comments = "none",
        strings = "none",
      },
      colors = {
        bg = "#100d01",
        pmenu = "#1d1e1f",
        pmenusel = "#2a2b2c",
      }
    })
  end
}
