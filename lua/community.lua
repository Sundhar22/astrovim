-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.recipes.telescope-nvchad-theme" },
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  { import = "astrocommunity.code-runner.compiler-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.colorscheme.citruszest-nvim" },
  { import = "astrocommunity.colorscheme.everblush-nvim" },
  { import = "astrocommunity.docker.lazydocker" },
  { import = "astrocommunity.editing-support.auto-save-nvim" },
  { import = "astrocommunity.pack.rainbow-delimiter-indent-blankline" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.java" },
}
