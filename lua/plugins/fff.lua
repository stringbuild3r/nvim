return {
  "dmtrKovalenko/fff.nvim",
  build = function()
    require("fff.download").download_or_build_binary()
  end,
  opts = {},
  lazy = false,
  keys = {
    {
      "<Leader>ff",
      function() require("fff").find_files() end,
      desc = "Find files (fff)",
    },
    {
      "<Leader>fg",
      function() require("fff").live_grep() end,
      desc = "Live grep (fff)",
    },
  },
}
