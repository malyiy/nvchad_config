---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>w"] = { "<cmd>w<CR>", "Save" },
    ["<leader>q"] = { "<cmd>q<CR>", "Quit" },
    ["<leader>gg"] = { "<cmd>LazyGit<CR>", "Open LazyGit" },
    ["<leader>fF"] = {
      function() require("telescope.builtin").find_files { hidden = true, no_ignore = true } end,
      "Find all files",
    },
    ["<leader>fW"] = {
      function()
        require("telescope.builtin").live_grep {
         additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
        }
      end,
      "Find words in all files",
    },
    ["<C-]>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
    },
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
    },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
  t = {
     ["<C-]>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
    },
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
    },
  }
}

-- more keybinds!

return M
