return {
  -- {
  --   "rose-pine/neovim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("rose-pine").setup({
  --       --- @usage 'auto'|'main'|'moon'|'dawn'
  --       variant = "dawn",
  --       --- @usage 'main'|'moon'|'dawn'
  --       -- dark_variant = "main",
  --       -- disable_background = true,
  --
  --       styles = {
  --         bold = true,
  --         italic = true,
  --         transparency = false,
  --       },
  --
  --       -- before_highlight = function(group, highlight, palette)
  --       --   if highlight.bg == palette.base then
  --       --     highlight.bg = "#ffdcbc"
  --       --   elseif highlight.bg == palette.overlay then
  --       --     highlight.bg = "#ffe5cc"
  --       --   elseif highlight.fg == palette.gold then
  --       --     highlight.fg = "#b47929"
  --       --   elseif highlight.fg == palette.love then
  --       --     highlight.fg = "#854a59"
  --       --   elseif highlight.fg == palette.rose then
  --       --     highlight.fg = "#a05f5f"
  --       --   elseif highlight.fg == palette.foam then
  --       --     highlight.fg = "#3f6b71"
  --       --   elseif highlight.fg == palette.iris then
  --       --     highlight.fg = "#69527e"
  --       --   end
  --       -- end,
  --
  --       -- before_highlight = function(group, highlight, palette)
  --       --   if highlight.fg == palette.pine then
  --       --     highlight.fg = "#477878"
  --       --   elseif highlight.fg == palette.gold then
  --       --     highlight.fg = "#f8a77c"
  --       --   elseif highlight.fg == palette.love then
  --       --     highlight.fg = "#dd4574"
  --       --   elseif highlight.fg == palette.rose then
  --       --     highlight.fg = "#feaaac"
  --       --   elseif highlight.fg == palette.foam then
  --       --     highlight.fg = "#a4d8d7"
  --       --   elseif highlight.fg == palette.iris then
  --       --     highlight.fg = "#deadd8"
  --       --   end
  --       -- end,
  --
  --       -- white --
  --       --
  --       --   before_highlight = function(group, highlight, palette)
  --       --     if highlight.fg == palette.love then
  --       --       highlight.fg = "#e0def4"
  --       --
  --       --     -- elseif highlight.fg == palette.rose then
  --       --     --   highlight.fg = "#feaaac"
  --       --     elseif highlight.fg == palette.foam then
  --       --       highlight.fg = "#e0def4"
  --       --     elseif highlight.fg == palette.iris then
  --       --       highlight.fg = "#e0def4"
  --       --     end
  --       --   end,
  --     })
  --     vim.cmd("colorscheme rose-pine")
  --   end,
  -- },
  -- {
  --   "projekt0n/github-nvim-theme",
  --   config = function()
  --     vim.cmd("colorscheme github_dark_default")
  --   end,
  -- },
  -- {
  --   "zenbones-theme/zenbones.nvim",
  --   -- Optionally install Lush. Allows for more configuration or extending the colorscheme
  --   -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
  --   -- In Vim, compat mode is turned on as Lush only works in Neovim.
  --   requires = "rktjmp/lush.nvim",
  --
  --   config = function()
  --     vim.cmd("colorscheme neobones")
  --     -- vim.o.background = "light"
  --   end,
  -- },
  -- Lua

  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
        --
      })

      vim.cmd("colorscheme poimandres")
    end,
  },
}
