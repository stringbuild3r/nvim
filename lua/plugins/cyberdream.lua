return {
"scottmckendry/cyberdream.nvim",
lazy = false,
priority = 1000,
opts = {
    highlights = {
        Comment = { bold = false }
    }
},
config = function(_, opts)
    require("cyberdream").setup(opts)
end
}
