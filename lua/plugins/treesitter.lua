-- Customize Treesitter

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
    },

    highlight = {
      enable = true,
    },

    autotag = {
      enable = true,
    },
  },
}
