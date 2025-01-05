return {
  {
    "github/copilot.vim",
    dependencies = { "catppuccin/nvim" },
    event = "VimEnter",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_workspace_folders = { vim.fn.getcwd() }

      -- Accept suggestion
      vim.api.nvim_set_keymap(
        "i",
        "<C-l>",
        'copilot#Accept("<CR>")',
        { silent = true, expr = true, script = true, replace_keycodes = false }
      )

      -- Next suggestion
      vim.api.nvim_set_keymap("i", "<C-]>", "copilot#Next()", { silent = true, expr = true })

      -- Previous suggestion
      vim.api.nvim_set_keymap("i", "<C-[>", "copilot#Previous()", { silent = true, expr = true })

      -- Dismiss current suggestion
      vim.api.nvim_set_keymap("i", "<C-x>", "copilot#Dismiss()", { silent = true, expr = true })

      -- Suggest (manually trigger suggestion)
      vim.api.nvim_set_keymap("i", "<C-h>", "copilot#Suggest()", { silent = true, expr = true })
    end,
  }, {
  "CopilotC-Nvim/CopilotChat.nvim",
  opts = {
    mode = "split",
    show_help = "yes",
  },
  build = function()
    vim.defer_fn(function()
      vim.cmd("UpdateRemotePlugins")
      vim.notify("CopilotChat - Updated remote plugins. Please restart Neovim.")
    end, 3000)
  end,
  event = "VeryLazy",
  keys = {
    { 
      "<leader>ai", 
      "<cmd>CopilotChatOpen<cr>", 
      desc = "Open CopilotChat" 
    },
    { 
      "<leader>at", 
      "<cmd>CopilotChatToggle<cr>", 
      desc = "Toggle CopilotChat" 
    },
    {
      "<leader>ae",
      "<cmd>CopilotChatExplain<cr>",
      desc = "Explain code"
    },
    {
      "<leader>af",
      "<cmd>CopilotChatFix<cr>",
      desc = "Fix code"
    },
    {
      "<leader>ar",
      "<cmd>CopilotChatReset<cr>",
      desc = "Reset chat"
    },
    -- Visual mode mappings
    {
      "<leader>av",
      ":CopilotChatVisual",
      mode = "v",
      desc = "Open chat with visual selection"
    },
    {
      "<leader>ax",
      ":CopilotChatInject",
      mode = "v",
      desc = "Inject selection into chat"
    }
  }
}
}
