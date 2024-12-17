return {
  'stevearc/oil.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("oil").setup({
      -- Default configuration options
      default_file_explorer = true,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        -- Show hidden files
        show_hidden = true,
      },
      -- Optional: keymaps within the oil buffer
      keymaps = {
        ["<C-c>"] = "actions.close",
        ["<C-r>"] = "actions.refresh",
        ["<CR>"] = "actions.select",
        ["<C-v>"] = "actions.select_vsplit",
        ["<C-h>"] = "actions.select_split",
        ["<C-t>"] = "actions.select_tab",
      }
    })

    -- Create a mapping to open Oil explorer
    vim.keymap.set('n', '<leader>io', ':Oil<CR>', { noremap = true, silent = true })
  end
}
