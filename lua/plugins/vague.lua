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

    -- Force background color override
    vim.cmd("highlight Normal guibg=#000000")
    vim.cmd("highlight NormalNC guibg=#000000")
  end
}
