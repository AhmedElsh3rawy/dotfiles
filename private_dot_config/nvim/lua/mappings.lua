local function map(mode, lhs, rhs, desc)
    local opts = { noremap = true, silent = true }
    if desc then
        opts.desc = desc
    end
    vim.keymap.set(mode, lhs, rhs, opts)
end

map('v', 'J', ":m '>+1<cr>gv=gv", 'Move selected lines down')
map('v', 'K', ":m '<-2<cr>gv=gv", 'Move selected lines up')

map('n', '<C-s>', '<cmd>w<cr>', 'Save file')

map('x', '<leader>p', [["_dP]], 'Paste without losing yanked')

map('n', '<leader>x', '<cmd>bd<cr>', 'Close active buffer')

map('n', '<Tab>', '<cmd>bnext<cr>', 'Next buffer')
map('n', '<S-Tab>', '<cmd>bprevious<cr>', 'Prev buffer')
-- Fzf-lua
map('n', '<leader>ff', '<cmd>FzfLua files<cr>', 'Find file')
map('n', '<leader>fw', '<cmd>FzfLua live_grep<cr>', 'Find word')
map('n', '<leader>fb', '<cmd>FzfLua buffers<cr>', 'Find buffer')
map('n', '<leader>fh', '<cmd>FzfLua helptags<cr>', 'Find help')
map('n', '<leader>fg', '<cmd>FzfLua git_files<cr>', 'Find file (git-files)')

map('n', '<leader>gc', '<cmd>FzfLua git_commits<cr>', 'Commits')
map('n', '<leader>gd', '<cmd>FzfLua git_diff<cr>', 'Git Diff (hunks)')
map('n', '<leader>gl', '<cmd>FzfLua git_commits<cr>', 'Commits')
map('n', '<leader>gs', '<cmd>FzfLua git_status<cr>', 'Status')
map('n', '<leader>gS', '<cmd>FzfLua git_stash<cr>', 'Git Stash')

map('n', '<leader>sm', '<cmd>FzfLua marks<cr>', 'Jump to mark')
map('n', '<leader>sH', '<cmd>FzfLua highlights<cr>', 'Search highlight groups')
map('n', '<leader>sq', '<cmd>FzfLua quickfix<cr>', 'Quickfix list')
map('n', '<leader>sC', '<cmd>FzfLua commands<cr>', 'Search commands')

map('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', 'Toggle nvim tree')

map('i', 'jn', '<Esc>', 'Jump to normal mode')

map('n', '<C-h>', '<C-w>h', 'switch window left')
map('n', '<C-l>', '<C-w>l', 'switch window right')
map('n', '<C-j>', '<C-w>j', 'switch window down')
map('n', '<C-k>', '<C-w>k', 'switch window up')

map('n', '<leader>df', vim.diagnostic.open_float, 'Open floating diagnostic message')
map('n', '<leader>dl', vim.diagnostic.setloclist, 'Open diagnostics list')
