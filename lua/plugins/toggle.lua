---@type LazyPluginSpec
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  event = "VeryLazy", -- load it lazily after startup
  opts = {
    open_mapping = [[<C-\>]],
    direction = "horizontal",
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
  },
}
