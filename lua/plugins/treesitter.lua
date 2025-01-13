---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    { "windwp/nvim-ts-autotag" },
  },
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      'prisma',
    },
    autotag = {
      enable = true,
    },

    highlight = {
      enable = true,
    },
  },

  config = function()
    -- Setup for nvim-ts-autotag
    require('nvim-ts-autotag').setup()
  end,
}
