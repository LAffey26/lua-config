local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}



map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
map('n', '<F5>', ':exec &nu==&rnu? "se nu!" : "se rnu!"<CR>', default_opts)
map('i', 'jk', '<Esc>', {noremap = true})
map('n', ',<space>', ':nohlsearch<CR>', {noremap = true})
map('n', '<C-a>', [[ <cmd>lua require('telescope.builtin').find_files()<cr> ]], default_opts)
map('n', '<C-p>', [[ <cmd>lua require('telescope.builtin').buffers()<cr> ]], default_opts)
map('n', '<S-F5>', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]], default_opts)
map('n', '<S-F4>', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], default_opts)
map('n', '<F4>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)
map('n','mm',':w<CR>:term python %<CR>',default_opts)
