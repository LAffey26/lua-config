vim.g.mapleader = " "

local keymap = vim.keymap


--General keymaps

keymap.set('i', 'jk', '<ESC>', {desc = 'Exit insert mode'})

--Nvim-tree

keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) 
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) 
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) 

--Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

--Side keymaps

keymap.set('n', '<leader>w', ':w<CR>', {desc = 'Saving  file changes'})
keymap.set('n', '<leader>q', ':q!<CR>', {desc = 'Exiting the nvim editor'})
keymap.set('n', '<leader>s', ':so %<CR>', {desc = 'Introduction of changes config'})







