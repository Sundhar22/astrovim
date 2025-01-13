return {

  vim.api.nvim_create_user_command("ToggleStatusline", function()
    local status = vim.o.laststatus
    if status == 0 then
      vim.o.laststatus = 2
    else
      vim.o.laststatus = 0
    end
  end, {}),
  -- {
  --   {
  --     "toggleterm.nvim",
  --     opts = {
  --       shell = "fish",
  --       -- float_opts = {
  --       --   border = "rounded",
  --       --   winblend = 3,
  --       -- },
  --       size = function(term)
  --         if term.direction == "horizontal" then
  --           return 18
  --         elseif term.direction == "vertical" then
  --           return vim.o.columns * 0.4
  --         end
  --       end,
  --     },
  --   },
  -- },
  --
  -- {
  --   options = {
  --     opt = {
  --       -- Enable line wrap
  --       wrap = true, -- Enable line wrapping
  --       linebreak = true, -- Wrap lines at convenient points (words rather than chars)
  --       breakindent = true, -- Preserve indentation in wrapped text
  --       showbreak = "↪ ", -- Show character at the start of wrapped lines
  --
  --       -- Optional: Set textwidth for automatic line breaks
  --       -- textwidth = 80,    -- Uncomment if you want automatic line breaks at 80 chars
  --
  --       -- Optional: Configure word wrap formatting
  --       formatoptions = "tcqjn1",
  --     },
  --   },
  -- },
  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠛⣛⣛⣋⣉⣉⣉⣙⣛⣛⣛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢋⣥⣶⡿⠟⠅⠿⠯⠿⠾⠿⠿⠏⠛⠛⢿⣶⣦⣍⡛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠡⠾⢟⣋⣀⣠⣤⣴⣶⣶⣶⣶⣿⣷⣶⣶⣦⣬⣁⣉⣙⠻⠦⣉⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢟⣠⣴⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣶⣦⣄⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢛⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠋⢉⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣦⣉⠻⢿⣿⣿⣿⣿⣿⣿⣿",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣡⡾⠟⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠛⠉⠁⠀⠀⠀⠀⠀⠴⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣙⠻⣿⣿⣿⣿⣿",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⣤⡞⡣⢐⣴⣿⣿⣿⣿⣿⣿⡿⠟⠋⠀⢀⠀⢠⣦⠀⠀⠀⠀⡀⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡿⠟⢳⡌⠻⣿⣿⣿⣿",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⣴⠟⡡⢪⢜⠍⣻⣿⢉⡭⠛⠟⠋⠀⠀⠀⣠⣾⠀⣿⣿⣆⠀⠀⠀⢹⣄⠀⠀⠀⠀⠀⠙⠭⣿⠿⡙⢿⣛⣿⣷⡘⡦⣄⢹⣦⠘⣿⣿⣿",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⡟⢡⣾⢋⣼⣼⡵⡡⣪⠟⢀⣤⠒⠁⠀⠀⠀⢀⣼⣿⣿⠀⣿⣿⣿⣦⠀⠀⠈⣿⣧⡀⠀⠀⠀⠀⠀⠈⠳⢝⢆⠋⢻⡁⡐⡐⣙⣦⣝⣷⡈⢿⣿",
        -- "⣿⣿⣿⣿⣿⣿⣿⡟⢀⣿⣿⣿⣿⣿⡟⣱⠟⣠⣿⠁⠀⠀⠀⡄⢀⣾⣿⣿⣿⡄⣿⣿⣿⣿⣷⣄⠀⢹⣿⣿⡄⠀⢠⠀⠀⠀⠀⠀⠀⠁⠀⢴⣴⣾⣿⣿⣿⣿⣿⡄⠻",
        -- "⣿⣿⣿⣿⣿⣿⡟⢠⣿⣿⣿⣿⣿⣯⣴⣧⣎⡾⠁⠀⠀⢀⡜⠠⠟⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠈⠛⣻⣭⣄⠀⣧⠀⠀⠀⠹⣧⡳⡄⠘⢟⢻⣿⣿⣿⣿⣿⣿",
        -- "⣿⣿⣿⣿⣿⡿⢠⡟⡰⠻⠛⠹⣿⡏⠸⣿⣿⠁⠀⠀⠀⣼⢃⣾⣿⣿⣿⣷⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣦⢹⡆⠀⠀⠀⠹⠳⢸⡄⠜⠇⠆⠉⣿⣿⣿⣿",
        -- "⣿⣿⣿⣿⡿⠀⡿⢀⠀⠃⠂⡆⢻⢰⢰⡆⢁⡀⠀⠀⣰⣿⣿⣿⡿⠿⢿⣿⣿⣿⣿⣧⠹⣿⣿⣿⣿⣿⡿⠟⠛⠙⠛⣿⣿⠀⠀⠀⠀⠀⢄⠰⡔⣸⡘⣴⡌⣿⣧⣿⣿",
        -- "⣿⣿⣿⣿⠃⢸⢀⡇⡎⡆⡄⡏⠉⡈⠚⣠⣿⣿⠀⠀⣿⣿⡿⠃⣠⣤⣤⡀⢹⣿⣿⣿⠀⢻⣿⣿⣿⣿⢠⣶⣾⣷⣄⠘⣿⡆⠃⠀⢱⣿⣿⣧⡈⠃⠇⢸⢸⣷⡍⡿",
        -- "⣿⣿⣿⣿⡆⢸⠀⡇⡇⡇⡇⣇⠁⣴⣾⣿⣿⣿⡆⢠⣿⣿⢁⣼⣿⣿⣿⣿⣿⣿⣿⣿⠀⠞⢻⣿⣿⣿⣏⠛⠟⠻⠟⠛⠛⢿⣼⢠⣼⣿⣿⣿⣧⠀⠆⠘⠌⡏⠇⣇",
        -- "⣿⣿⣿⣿⡇⢸⡆⡇⡇⡅⡠⢸⠁⣹⣿⣿⣿⣿⣿⠘⠟⠩⠙⣫⣿⣿⣿⡿⠿⠿⠟⣛⣛⣛⣛⣛⣛⣛⣛⠛⠷⠼⠿⣶⣦⣀⠟⢰⣿⣿⣿⣿⡟⠀⡼⠠⠠⠠⠠⡹",
        -- "⣿⣿⣿⣿⣧⠈⣧⢻⠘⠀⣁⣡⡁⣿⣿⣿⣿⣿⣷⡆⢴⣶⠻⠟⡉⢩⣵⣶⣶⣿⣿⣿⡿⠿⠿⠿⢿⣿⣿⣿⣿⣷⣄⣬⠙⣿⠂⢭⢿⣿⣿⣿⠏⣸⡷⠠⢁⠁⠁⢠",
        -- "⣿⣿⣿⣿⣿⠀⢯⢤⠣⠁⡰⢤⡄⢸⣿⣿⣿⣿⣿⣏⠘⣿⡆⢾⣿⣿⣿⡿⠟⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠿⠿⡿⢠⣿⢠⢦⠼⡛⠉⣡⣈⠓⣰⣠⠋⠔⣰⢋⣼",
        -- "⣿⣿⣿⣿⣿⣧⠈⢄⢢⠁⡑⢦⡑⢸⣿⣿⣿⣿⡿⣿⡁⢹⣷⡘⠿⠟⠁⠀⠠⣀⣴⣿⣿⣶⣶⣾⣷⣦⣄⣀⠀⠀⠉⣠⣿⠇⠖⣁⣀⣴⣶⣎⠛⣷⣄⢑⣠⡾⢃⣾",
        -- "⣿⣿⣿⣿⣿⣿⣶⡈⢺⣦⣱⣾⣷⡈⠻⣿⣿⣿⡿⣿⠟⡂⢿⣿⣆⡀⢰⡾⠿⠿⠿⣛⣛⣛⣛⣛⣛⣛⡻⠿⡇⢀⡴⠿⠟⠀⣾⣿⣿⣿⣿⣿⢡⢸⡏⠈⢋⣴⣿⣿",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣦⡙⠿⣿⣏⡱⠄⠻⡻⣷⢿⡽⣷⡛⠆⢻⣿⣷⣦⣀⠲⠿⣿⣿⣿⣿⣿⣿⣿⠿⠿⣂⣴⡞⢰⣶⡦⢀⣠⣿⣿⣿⣿⠏⠀⠈⣴⠀⣤⠙⣿⣿",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣬⡙⠿⡿⢦⣈⠻⣍⣶⠜⠴⡎⠀⠉⠻⠿⢿⣷⣶⣦⣭⣭⣭⣭⣭⣶⣶⣾⣟⠉⠰⢿⣿⣷⣿⣿⣿⡿⢿⣿⡂⠆⠀⢿⣦⠙⣃⣉⢿",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡮⠭⠉⠗⣈⡑⠈⠉⠀⠀⢀⣀⡀⡀⠈⠉⠛⠛⠿⠿⠿⠟⠛⡉⠉⡄⠆⠐⠘⠿⠿⠿⢟⣡⣶⣦⣉⣙⢲⡾⠆⣹⠇⣿⣿⡄",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣋⣩⣴⣾⣶⣿⣿⣿⣾⣿⣷⣆⣈⡛⠀⣿⣷⣄⠀⢀⣦⣖⡶⠀⠀⡆⢱⠹⠰⢀⣉⣀⣤⣾⣿⣿⣿⣿⣿⣿⣮⡳⠿⣀⣀⠿⠛⣡",
        -- "⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣁⣈⣑⣊⣍⣚⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣙⠻⣿⣷⣦⣉⡛⠂⠀⡄⡇⠊⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣥⣦⣉⣶⣄⡶⠞⢉⡈",
        -- "⣿⣿⣿⣿⣿⣿⣿⠟⣡⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣬⣙⠻⣿⣿⡦⢂⣥⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗",
        -- "⣿⣿⣿⣿⣿⠟⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠓⣨⣥⣶⣿⣿⣿⣿⡿⠋⠀⢠⣿⣿⣿⣿⣿⡿⢻⠿⢻⠿⣿⣿⣿⣿⣿⣿⣿",
        -- "⣿⣿⣿⣿⠃⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠛⠛⠋⠛⠛⠿⡏⢳⢺⣦⢄⢹⠇⣰⣿⣿⣿⡿⠿⢛⡛⠁⠀⣴⣿⣿⣿⣿⠟⡡⠂⢀⣡⣞⡻⠟⣿⣿⣿⣿⣿⣩⠛",
        -- "⣿⣿⣿⣿⡄⣿⡙⢿⡙⡟⠋⠃⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠊⠦⢠⣾⣿⣿⡟⠀⢀⣿⣿⣿⣿⠟⠫⠌⠛⠁⠒⠀⠀⠋⠥⠴⠅⠒⠁⢤⡴⢞⠋⣁⠘⠡⠴",
        -- "⣿⣿⣿⣿⣇⠻⡙⠄⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣷⣴⣿⡟⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠋⠊⠀⣼⣿⣿⣿",
        -- "⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠃⠾⡘⣿⠸⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⢿⣿⣿",
        -- "⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⢠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣤⣀⠀⠀⠀⣀⣤⣤⣄⡀⠀⣠⣤⣤⣴⣶⣶⣶⣶⣶⣶⣤⣤⣤⣤⣤⡄⢠⣴⡆⠀⠀⠀⠀⠀⠀",
        -- "⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠘⣿⣿⣇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢰⣿⣿⣿⣿⣿⣿⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢣⣾⡟⢀⣠⣤⣤⣤",
        -- "⣿⣿⡏⠀⠀⣠⣴⣾⣿⣿⣷⣌⢻⣿⢸⡏⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠘⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣸⠟⣰⣿⣿⣿⣿⣿",
        -- "⣿⡏⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⡌⢿⣸⡇⣼⣿⣿⠿⠿⠟⠛⠛⠛⠉⠉⠙⠛⠀⠛⠛⠛⠛⠛⠛⠘⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠻⠿⣿⠇⣿⣸⣿⣿⣿⣿⣿⣿",
        -- "⡟⢰⣿⡿⠿⠿⠿⠛⠿⠿⣿⣿⣧⢸⠈⠐⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠉⠙⠟⠻⢿⣿⣿⣿⠿⠿⠿",
        -- "⠇⠉⠁⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⡄⠄⠀⠀⠀⣴⣾⣿⣿⣿⣿⣿⣿⠇⠐⠒⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀",
        -- "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⠀⠠⠀⣴⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠈⠑⠒⠀⣄⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀",
        -- "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣷⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        -- "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠀⠉⠐⠢⠀⡀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        -- "⠀⢀⣀⣤⣴⣶⣶⣶⣶⣦⠄⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠉⠐⠀⠀⢀⣉⣀⣄⣐⣒⠶⣶⣶⣦⣄⡀",
        --

        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⣶⣦⣤⣴⡄⠀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢶⣶⣤⣿⣿⣿⣿⣿⣿⣶⣾⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣴⣿⣿⣿⣿⡿⠃⠀⢻⣿⣿⡟⣿⣿⣿⣿⣿⣿⣟⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⢀⠀⠀⠀⠀⠉⠛⣻⣿⣿⣿⡿⠁⠀⠀⠀⢻⣿⡇⠘⡏⢿⣿⣿⣿⣿⡷⠦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⢸⡄⠀⠀⠀⠠⠾⠛⣿⣿⢻⠧⠤⠒⠂⠀⠀⠹⣇⠐⠛⠺⡿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⢸⡇⠀⠀⠀⠀⢠⣾⣿⣿⠸⢀⣠⣤⣄⠀⡇⠀⠈⣶⣦⣤⡁⢹⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⣀⣀⣠⠞⠙⣤⣀⣀⡔⠛⠛⢿⣿⣀⡘⠛⠉⠀⠘⠃⠀⠀⠓⠷⠽⣷⣸⣿⣿⣇⠈⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠈⠙⣦⡞⠉⠀⠀⠀⠀⠀⢸⣿⡙⣿⠶⠚⠉⠉⠉⣉⣉⠉⠋⣓⡿⢹⣿⡿⠀⠀⠀⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⣿⠃⠀⠀⠀⠀⠀⠀⠈⢿⣧⠸⣾⣿⣿⠿⠿⠿⠿⠿⢿⡿⢁⣿⠟⠁⠀⠀⠀⢀⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⢸⠀⠀⠀⠀⠀⣀⡠⠤⡄⠙⠧⣙⢿⣖⠒⠒⠒⢀⣰⠞⡡⠊⠀⠀⠀⠐⠒⠲⢏⣀⠽⠓⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠈⠀⠀⠀⠀⣾⣿⠏⠉⠁⠀⠀⠈⣳⣮⣭⣒⣋⣭⣴⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⠀⠀⣀⣀⣠⣏⣇⣀⡀⠀⠀⢠⣾⣿⡏⠙⢿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⠀⡴⠚⠻⢿⣶⡖⣷⡴⣿⠀⢠⣿⣿⡿⠁⠀⠀⠉⠉⢻⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⠀⣰⢁⡴⠒⠶⣿⣧⢿⣤⣿⣷⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠛⣿⣿⣿⣿⠒⠤⠤⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⣼⢿⡥⠒⠒⠢⢤⣿⣿⢛⣿⣿⣿⣿⣿⠓⠦⡀⠀⠀⡠⠔⠚⢻⣿⣿⣿⡆⠀⠀⠀⠀⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⠀⣿⢋⣠⠶⢲⣶⣶⣿⠁⣼⢸⣿⣿⣿⣿⠀⠀⠉⠀⡖⠀⠀⠀⠈⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        "⢰⠛⣏⣠⣴⠚⠿⣿⣿⠎⢸⢸⣿⣿⣿⣿⠀⠀⢀⣾⢀⡀⠀⠀⣰⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠓⠤⣀⠀⠀⠀⠀⠀⠀",
        "⠸⠀⢸⠁⣿⡴⠿⠏⠹⠻⢾⣎⣿⣿⣿⡏⠙⠲⠏⠘⠋⢧⠴⠊⠀⣿⣿⣿⣿⡄⠰⠢⢄⡀⠀⠀⠀⠀⠀⠀⠙⢦⡀⠀⠀⠀",
        "⠀⣆⣀⣾⡏⠉⣩⣏⣿⣋⢋⣿⣿⣿⣿⡇⠀⠀⠀⣀⣀⠀⠀⠀⢰⣿⣿⣿⣿⣷⠃⠀⠀⠈⠲⢄⡀⠀⠀⠀⠀⠀⠙⢶⣄⠀",
        "⠀⣇⠀⠀⢻⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⣀⣤⠿⣷⠀⠀⠀⢸⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠉⠒⢤⡀⠀⠀⠀⠀⠈⢧",
        "⠀⢸⠀⠀⠈⣾⣿⣿⣿⡿⣿⣿⣿⣿⣿⡏⠛⠋⠁⢠⣶⠉⠁⠀⢼⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⠀⠀⠀⢀⡞",
        "⠀⠈⡀⠀⠀⠘⣿⣿⣿⠇⣿⣿⣿⣿⣿⣷⠂⠀⢀⣨⣯⡀⢠⣤⣺⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢀⡎⠀⠀⠀⠈⠀",
        "⠀⠀⠀⠀⠀⠀⠉⠉⠉⠀⠉⠉⠉⠉⠉⠉⠀⠀⠉⠉⠁⠈⠈⠈⠉⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀",
      }
      return opts
    end,
  },
  {
    "yutkat/confirm-quit.nvim",
    event = "CmdlineEnter",
    opts = {
      confirm_quit = true,
      confirm_quit_modified = true,
    },
  },
  -- -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },

  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  -- {
  --   -- Add this to your existing plugins in user.lua
  --   {
  --     "AndrewRadev/tagalong.vim",
  --     event = "VeryLazy",
  --     ft = { "html", "jsx", "tsx", "javascriptreact", "typescriptreact" },
  --     config = function() vim.keymap.set("i", "<C-c>", "<Esc>", { noremap = true, silent = true }) end,
  --   },
  -- },
}
