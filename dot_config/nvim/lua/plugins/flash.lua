return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {
      -- search = {
      -- 	enabled = true, -- enable flash for search
      -- 	highlight = { backdrop = false },
      -- 	jump = { history = true, register = true, nohlsearch = true },
      -- 	label = {
      -- 		uppercase = false,
      -- 		current = false,
      -- 	},
      -- 	search = {
      -- 		-- `forward` will be automatically set to the search direction
      -- 		-- `mode` is always set to `search`
      -- 		-- `incremental` is set to `true` when `incsearch` is enabled
      -- 	},
      -- },
      label = {
        uppercase = false,
        current = false,
      },
      ---@type table<string, Flash.Config>
      modes = {
        -- options used when flash is activated through
        -- a regular search with `/` or `?`
        search = {
          enabled = true, -- enable flash for search
          highlight = { backdrop = false },
          jump = { history = true, register = true, nohlsearch = true },
          label = {
            uppercase = false,
            current = false,
          },
          search = {
            -- `forward` will be automatically set to the search direction
            -- `mode` is always set to `search`
            -- `incremental` is set to `true` when `incsearch` is enabled
          },
        },
        -- options used when flash is activated through
        -- `f`, `F`, `t`, `T`, `;` and `,` motions
        char = {
          enabled = false,
          -- by default all keymaps are enabled, but you can disable some of them,
          -- by removing them from the list.
          keys = { "f", "F", "t", "T", ";", "," },
          search = { wrap = false },
          highlight = { backdrop = true },
          jump = { register = false },
        },
        -- options used for treesitter selections
        -- `require("flash").treesitter()`
        treesitter = {
          labels = "abcdefghijklmnopqrstuvwxyz",
          jump = { pos = "range" },
          highlight = {
            label = { before = true, after = true, style = "inline" },
            backdrop = false,
            matches = false,
          },
        },
      },
    },
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          -- default options: exact mode, multi window, all directions, with a backdrop
          require("flash").jump()
        end,
      },
      {
        "S",
        mode = { "o", "x" },
        function()
          require("flash").treesitter()
        end,
      },
    },
  },
}
