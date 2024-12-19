return {
  'thimc/gruber-darker.nvim',
  config = function()
    require('gruber-darker').setup({
      overrides = {
        FoldColumn = { bg = "#171717" },
      },
      -- OPTIONAL
      transparent = true, -- removes the background
      -- underline = false, -- disables underline fonts
      -- bold = false, -- disables bold fonts
    })
    
    -- Apply the colorscheme
    vim.cmd.colorscheme('gruber-darker')

    -- Ensure FoldColumn is applied correctly
    vim.api.nvim_set_hl(0, 'FoldColumn', { bg = "#171717" })
  end,
}
