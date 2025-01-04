return {
  "vague2k/vague.nvim",
  config = function()
    require("vague").setup({
      style = {
        comments = "none",  -- Override default italic
        strings = "none",   -- Override default italic
      },
      colors = {
        pmenu = "#1d1e1f",      -- Popup menu background
        pmenusel = "#2a2b2c",   -- Selected item highlight
      }
    })
  end
}
