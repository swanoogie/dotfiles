require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- NORMAL MODE
-- Window spliting
map("n", "|", "<cmd> vsplit <CR>", { desc = "Vertical split" })
map("n", "-", "<cmd> split <CR>", { desc = "Horizontal split" })

-- Window resize
map("n", "<C-Left>", "<cmd> vertical resize +3<CR>", { desc = "Resize right" })
map("n", "<C-Right>", "<cmd> vertical resize -3<CR>", { desc = "Resize left" })
map("n", "<C-Up>", "<cmd> resize +3<CR>", { desc = "Resize up" })
map("n", "<C-Down>", "<cmd> resize -3<CR>", { desc = "Resize down" })

-- Quit buffer
map("n", "<leader>q", "<cmd> q <CR>", { desc = "Quit" })

-- Close all buffer
map("n", "<leader>X", "<cmd> %bd|e# <CR>", { desc = "Close all buffer" })

-- NvimTree
map("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle NvimTree", remap = true })

-- Fzf
map("n", "<leader>lc", function()
  require("fzf-lua").command()
end, { desc = "Fzf" })

-- Neogit
map("n", "<leader>gn", function()
  local neogit = require "neogit"
  neogit.open()
end, { desc = "Toggle neogit" })

-- Linting -> Disable for no TODO: Fix it
-- map("n", "<leader>lt", function()
--   local lint = require("lint")
--   local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
--
--   vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
--     group = lint_augroup,
--     callback = function()
--       lint.try_lint()
--     end
--   })
-- end, { desc = "Trigger linting for curr buffer" })
-- map("n", "<leader>lg", function()
--   local lint = require("lint")
--   local linters = lint.get_running()
--   if #linters == 0 then
--     return "N/A"
--   end
--   return "Linter: " .. table.concat(linters, ", ")
-- end, { desc = "Get current lint" })

-- Diffview
map("n", "<leader>hh", function()
  local diffview_lib = require "diffview.lib"
  if next(diffview_lib.views) == nil then
    vim.cmd "DiffviewOpen"
  else
    vim.cmd "DiffviewClose"
  end
end, { desc = "Toggle Diffview" })

-- Nvterm
-- map("n", "<leader>t", function()
--   require("nvterm.terminal").toggle "float"
-- end, { desc = "Toggle floating term" })

-- Gitsigns
local gitsigns = require "gitsigns"
map("n", "<leader>gb", function()
  gitsigns.blame_line { full = true }
end)
map("n", "<leader>gB", gitsigns.toggle_current_line_blame)
map("n", "<leader>gp", gitsigns.preview_hunk)
map("n", "<leader>gs", gitsigns.stage_hunk)
map("n", "<leader>gr", gitsigns.reset_hunk)
map("v", "<leader>gs", function()
  gitsigns.stage_hunk { vim.fn.line ".", vim.fn.line "v" }
end)
map("v", "<leader>gr", function()
  gitsigns.reset_hunk { vim.fn.line ".", vim.fn.line "v" }
end)
-- map("n", "<leader>gd", gitsigns.diffthis)
-- map("n", "<leader>gS", gitsigns.stage_buffer)
-- map("n", "<leader>gu", gitsigns.undo_stage_hunk)
-- map("n", "<leader>gR", gitsigns.reset_buffer)
-- map("n", "<leader>gD", function()
--   gitsigns.diffthis "~"
-- end)
-- map("n", "<leader>td", gitsigns.toggle_deleted)
