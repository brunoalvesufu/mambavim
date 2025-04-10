-- Which-key groups
local wk = require("which-key")

wk.add({
  { "<leader>b", group = "Buffers" , mode = { "n", "v" }},
  { "<leader>e", group = "Explorer" , mode = { "n", "v" }},
  { "<leader>f", group = "Find" , mode = { "n", "v" }},
  { "<leader>g", group = "Git" , mode = { "n", "v" }},
  { "<leader>l", group = "LSP" , mode = { "n", "v" }},
  { "<leader>n", group = "New File" , mode = { "n", "v" }},
  { "<leader>q", group = "Quit" , mode = { "n", "v" }},
  { "<leader>r", group = "Reload" , mode = { "n", "v" }},
  { "<leader>t", group = "Terminal" , mode = { "n", "v" }},
  { "<leader>u", group = "UI" , mode = { "n", "v" }},
  { "<leader>w", group = "Window" , mode = { "n", "v" }},
})

-- Keymaps configuration file
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- FIND / TELESCOPE / FZF
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = "Find Files" })
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = "Live Grep" })
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = "Find Buffers" })
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = "Help Tags" })
map('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', { desc = "Recent Files" })
map('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>', { desc = "Fuzzy Find in Buffer" })
map('n', '<leader>ft', '<cmd>Telescope treesitter<cr>', { desc = "Treesitter Symbols" })
map('n', '<leader>fm', '<cmd>Telescope marks<cr>', { desc = "Marks" })
map('n', '<leader>fc', '<cmd>Telescope commands<cr>', { desc = "Commands" })
map('n', '<leader>fk', '<cmd>Telescope keymaps<cr>', { desc = "Keymaps" })
map('n', '<leader>fr', '<cmd>Telescope resume<cr>', { desc = "Resume Last Telescope" })
map('n', '<leader>fj', '<cmd>Telescope jumplist<cr>', { desc = "Jump List" })

-- NEOTREE
map('n', '<leader>e', '<cmd>Neotree toggle<cr>', { desc = "Toggle File Explorer" })
map('n', '<leader>ef', '<cmd>Neotree focus<cr>', { desc = "Focus File Explorer" })
map('n', '<leader>ec', '<cmd>Neotree close<cr>', { desc = "Close File Explorer" })

-- LSP / Clojure-LSP
map('n', '<leader>ld', vim.lsp.buf.definition, { desc = "Go to Definition" })
map('n', '<leader>lD', vim.lsp.buf.declaration, { desc = "Go to Declaration" })
map('n', '<leader>li', vim.lsp.buf.implementation, { desc = "Go to Implementation" })
map('n', '<leader>lr', vim.lsp.buf.rename, { desc = "Rename Symbol" })
map('n', '<leader>la', vim.lsp.buf.code_action, { desc = "Code Action" })
map('n', '<leader>lt', vim.lsp.buf.type_definition, { desc = "Type Definition" })
map('n', '<leader>lf', function() vim.lsp.buf.format { async = true } end, { desc = "Format Buffer" })
map('n', '<leader>lh', vim.lsp.buf.hover, { desc = "Hover Info" })
map('n', '<leader>ls', vim.lsp.buf.signature_help, { desc = "Signature Help" })
map('n', '<leader>lR', '<cmd>Telescope lsp_references<cr>', { desc = "Find References" })
map('n', '<leader>lw', '<cmd>Telescope diagnostics<cr>', { desc = "Workspace Diagnostics" })
map('n', '<leader>ll', vim.diagnostic.open_float, { desc = "Show Line Diagnostics" })
map('n', '<leader>ln', vim.diagnostic.goto_next, { desc = "Next Diagnostic" })
map('n', '<leader>lp', vim.diagnostic.goto_prev, { desc = "Previous Diagnostic" })

-- Buffers
map('n', '<leader>bd', '<cmd>bd<cr>', { desc = "Delete Buffer" })
map('n', '<leader>bn', '<cmd>bnext<cr>', { desc = "Next Buffer" })
map('n', '<leader>bp', '<cmd>bprevious<cr>', { desc = "Previous Buffer" })
map('n', '<leader>bl', '<cmd>ls<cr>', { desc = "List Buffers" })
map('n', '<leader>bb', '<cmd>e #<cr>', { desc = "Switch to Last Buffer" })
map('n', '<leader>bw', '<cmd>wa<cr>', { desc = "Write All Buffers" })

-- Windows
map('n', '<leader>ws', '<cmd>split<cr>', { desc = "Horizontal Split" })
map('n', '<leader>wv', '<cmd>vsplit<cr>', { desc = "Vertical Split" })
map('n', '<leader>wh', '<C-w>h', { desc = "Move Left" })
map('n', '<leader>wj', '<C-w>j', { desc = "Move Down" })
map('n', '<leader>wk', '<C-w>k', { desc = "Move Up" })
map('n', '<leader>wl', '<C-w>l', { desc = "Move Right" })
map('n', '<leader>ww', '<C-w>w', { desc = "Switch Window" })
map('n', '<leader>wq', '<cmd>q<cr>', { desc = "Close Window" })
map('n', '<leader>wc', '<cmd>close<cr>', { desc = "Close Current Window" })
map('n', '<leader>wo', '<cmd>only<cr>', { desc = "Keep Only This Window" })
map('n', '<leader>wr', '<C-w>r', { desc = "Rotate Windows" })
map('n', '<leader>w=', '<C-w>=', { desc = "Equalize Splits" })

-- Terminal
map('n', '<leader>tt', '<cmd>terminal<cr>', { desc = "Open Terminal" })
map('n', '<leader>tv', '<cmd>vsplit | terminal<cr>', { desc = "Vertical Terminal" })
map('n', '<leader>ts', '<cmd>split | terminal<cr>', { desc = "Horizontal Terminal" })
map('t', '<Esc>', [[<C-\><C-n>]], { desc = "Escape Terminal Mode" })

-- Git
map('n', '<leader>gs', '<cmd>Telescope git_status<cr>', { desc = "Git Status" })
map('n', '<leader>gc', '<cmd>Telescope git_commits<cr>', { desc = "Git Commits" })
map('n', '<leader>gb', '<cmd>Telescope git_branches<cr>', { desc = "Git Branches" })
map('n', '<leader>gB', '<cmd>Git blame<cr>', { desc = "Git Blame" })

-- Mini.ai (Textobjects)
-- map('n', '<leader>ai', '<cmd>lua MiniAi.select_textobject("i", "a")<cr>', { desc = "Mini.ai: inside object" })
-- map('n', '<leader>aa', '<cmd>lua MiniAi.select_textobject("a", "a")<cr>', { desc = "Mini.ai: around object" })

-- Mini.surround (Replace/Motion)
-- map('n', '<leader>sr', '<cmd>lua MiniSurround.replace()<cr>', { desc = "Replace Surround" })
-- map('n', '<leader>sd', '<cmd>lua MiniSurround.delete()<cr>', { desc = "Delete Surround" })
-- map('n', '<leader>sa', '<cmd>lua MiniSurround.add()<cr>', { desc = "Add Surround" })

-- General
map('n', '<leader>w', '<cmd>w<cr>', { desc = "Write File" })
map('n', '<leader>q', '<cmd>q<cr>', { desc = "Quit" })
map('n', '<leader>Q', '<cmd>qa!<cr>', { desc = "Force Quit All" })
map('n', '<leader>r', '<cmd>source %<cr>', { desc = "Reload File" })
map('n', '<leader>n', '<cmd>enew<cr>', { desc = "New File" })
