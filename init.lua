-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end


require "lazy_setup"
require "polish"



vim.opt.title = true

function GetCurrentIconFile()
  local filename = vim.fn.expand "%:t"
  local icon = require("nvim-web-devicons").get_icon(filename)
  return icon or ""
end
vim.o.titlestring = '%{fnamemodify(getcwd(), ":t")} %{v:lua.GetCurrentIconFile()} %{expand("%:t")}'


vim.opt.list = true
vim.opt.listchars = { space = "·", tab = "··", trail = "·", nbsp = "·", multispace = "·", lead = "·" }

vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
  callback = function()
    for _, group in ipairs({ "NonText", "SpecialKey" }) do
      vim.api.nvim_set_hl(0, group, { link = "Whitespace" })
    end
  end,
})

-- Cursor configuration
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"


