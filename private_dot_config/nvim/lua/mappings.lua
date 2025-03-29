local map = vim.keymap.set

local builtin = require('telescope.builtin')

map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

map('x', '<leader>p', [["_dP]])

-- Telescope
map('n', '<leader>ff', builtin.find_files, { desc = 'Find file' })
map('n', '<leader>fw', builtin.live_grep, { desc = 'Find word' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Find help' })
map('n', ' <leader>fm', '<CMD>Telescope harpoon marks<CR>', { desc = 'Find marked file' })
-- nvim-tree
map('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Nvim tree' })
-- close buffer
map('n', '<leader>bc', ':BufferLinePickClose<CR>', { desc = 'Pick buffer to close' })
-- jump normal mode
map('i', 'jn', '<Esc>', {})
-- Navigate vim panes better
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true, desc = 'switch window left' })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true, desc = 'switch window right' })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true, desc = 'switch window down' })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true, desc = 'switch window up' })
-- for debugging
map('n', '<leader>db', '<cmd> DapToggleBreakpoint <CR>', { desc = 'Add breakpoint at line' })
map('n', '<leader>dr', '<cmd> DapContinue <CR>', { desc = 'Start or continue the debugger' })
-- harpoon
map('n', 'hm', require('harpoon.ui').toggle_quick_menu, { desc = 'Harpoon menu' })
map('n', 'hx', require('harpoon.mark').add_file, { desc = 'Harpoon add file' })
map('n', 'hn', require('harpoon.ui').nav_next, { desc = 'Harpoon next' })
map('n', 'hp', require('harpoon.ui').nav_prev, { desc = 'Harpoon previous' })
