local builtin = require("telescope.builtin")
local map = vim.keymap.set
map("n", "<leader>ff", builtin.find_files, { desc = "Find file" })
map("n", "<leader>fw", builtin.live_grep, { desc = "Find word" })
map("n", "<leader>fb", builtin.buffers, { desc = "Find buffer" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Nvim tree" })
map("n", "<leader>bc", ":BufferLinePickClose<CR>", { desc = "Pick buffer to close" })
map("i", "jn", "<Esc>", {})
-- Navigate vim panes better
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "switch window up" })
-- map("n", "<S-k>", ":wincmd k<CR>")
-- map("n", "<S-j>", ":wincmd j<CR>")
-- map("n", "<S-h>", ":wincmd h<CR>")
-- map("n", "<S-l>", ":wincmd l<CR>")
-- Navigate buffers
map("n", "<Tab>", "<CMD>BufferLineCycleWindowlessNext<CR>", { noremap = true, silent = true })
map("n", "<S-Tab>", "<CMD>BufferLineCycleWindowlessPrev<CR>", { noremap = true, silent = true })
map("n", "<C-Tab>", "<CMD>BufferLineCycleWindowlessToggle<CR>", { noremap = true, silent = true })
map("n", "<leader>x", ":bd<CR>", { noremap = true, silent = true, desc = "Close buffer" })
-- for debugging
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger" })
