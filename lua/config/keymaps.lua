-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
	vim.keymap.set(mode, lhs, rhs, opts)
end

map("n", "j", "j", { silent = true })
map("n", "k", "k", { silent = true })

map("i", "<esc>", "<esc><right>", { desc = "Leave insert mode" })

map("n", "<M-s>", "<cmd>w<cr>", { desc = "Save file" })
map("i", "<M-s>", "<cmd>w<cr>", { desc = "Save file" })

-- window size change
map("n", "<M-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<M-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<M-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<M-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- windows
map("n", "<leader>ww", "<C-W>c", { desc = "Delete window", remap = true })
map("n", "<M-x>", "<C-W>c", { desc = "Delete window", remap = true })
map("n", "<M-b>", "<C-W>h<C-W>c", { desc = "Close left window", remap = true })
map("n", "<leader>w`", "<C-W>s", { desc = "Split window below", remap = true })
map("n", "<leader>w\\", "<C-W>v", { desc = "Split window right", remap = true })
map("n", "<leader>`", "<C-W>s", { desc = "Split window below", remap = true })
map("n", "<leader>\\", "<C-W>v", { desc = "Split window right", remap = true })

map("n", "<A-Down>", "<cmd>m .+1<CR>==", { desc = "Shift row Down." })
map("i", "<A-Down>", "<cmd>m .+1<CR><esc>==i", { desc = "Shift row Down." })
map("n", "<A-Up>", "<cmd>m .-2<CR>==", { desc = "Shift row Up." })
map("i", "<A-Up>", "<cmd>m .-2<CR><esc>==i", { desc = "Shift row Up." })

-- Git
map("n", "<leader>git", "<cmd>Neogit<CR>", { desc = "Neogit" })
map("n", "<leader>gdt", "<cmd>diffthis<CR>", { desc = "Diff this", remap = true })
map("n", "<leader>gf", "<cmd>Neotree float git_status<CR>", { desc = "Neotree: git_status" })
map("n", "<leader>gdd", "<cmd>DiffviewOpen<CR>", { desc = "Open diffview for not commited files" })
map("n", "<leader>ghf", "<cmd>DiffviewFileHistory %<CR>", { desc = "Open file history for current file" })
map("n", "<leader>ghh", "<cmd>DiffviewFileHistory<CR>", { desc = "Open file history for project" })

-- CMD keys
map("n", "<M-j>", "<cmd>exe 'normal! o'<CR>", { desc = "Empty line below" })
map("i", "<M-j>", "<cmd>exe 'normal! o'<CR>", { desc = "Empty line below" })

map("n", "<M-k>", "<cmd>exe 'normal! O'<CR>", { desc = "Empty line above" })
map("i", "<M-k>", "<cmd>exe 'normal! O'<CR>", { desc = "Empty line above" })

map("n", "<M-o>", "yyp", { desc = "Duplicate current line" })
map("i", "<M-o>", "<ESC>yypA", { desc = "Duplicate current line" })
map("v", "<M-o>", "d2P", { desc = "Duplicate current line" })

map("v", "p", "P", { desc = "Paste Paste changing the register" })
map("v", "P", "p", { desc = "Paste and change the register for what we replaced" })

-- 'a' registry
map("n", "<M-t>", 'v"aiwp', { desc = "Paste the current word from 'a' registry" })

map("n", "x", '"_x', { desc = "x into '_' buffer" })
map("n", "X", "viwp", { desc = "Replace the current word with content from regular registry" })
map("v", "x", '"_x', { desc = "x into '_' buffer" })

-- Word search
map("n", "<leader>F", "<cmd>GrugFar<cr>", { desc = "Search globally", remap = true })

-- Format
map("n", "<F4>", "<cmd>LazyFormat<CR>", { desc = "Format document" })
map("i", "<F4>", "<cmd>LazyFormat<CR>", { desc = "Format document" })

--

map("n", "<leader>p", "<cmd>let @+ = expand('%:p')<CR>", { desc = "get current file's path" })

map("n", "<S-PageUp>", "<C-u>", { desc = "up" })
map("n", "<S-PageDown>", "<C-d>", { desc = "dwob" })

map("n", "<leader>u+", function()
	vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.07
	vim.api.nvim_command('exe "normal! jk"')
end, { desc = "Increase font size" })

map("n", "<leader>u-", function()
	vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.07
	vim.api.nvim_command('exe "normal! jk"')
end, { desc = "Desrease font size" })

map("n", "<leader>u=", function()
	vim.g.neovide_scale_factor = 1.0
end, { desc = "Reset font size" })

-- map to '<leader>y'
map("n", "<leader>y", "<cmd>YankBank<CR>", { noremap = true })

map("n", "ge", "<cmd>lua require('config.custom.path-switcher').switch_path()<cr>", { noremap = true, silent = true })

map("n", "<leader>fs", ":Oil<cr>", { noremap = true, silent = true })
