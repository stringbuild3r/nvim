return {
  {
    "yetone/avante.nvim",
    lazy = false,
    version = false,
    opts = {
      provider = "openai",
      auto_suggestions_provider = "openai",
      openai = {
        endpoint = "http://127.0.0.1:1234/v1",
        model = "deepseek-r1-distill11-qwen-7b",
        timeout = 30000,
        temperature = 0,
        max_tokens = 400,
        api_key = "",
      },
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = { file_types = { "markdown", "Avante" } },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
