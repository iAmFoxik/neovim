local function map(mode, ll, rr, desc)
  vim.keymap.set(mode, ll, rr, { desc = desc, silent = true })
end

local function cmd(command)
  return table.concat({ "<CMD>", command, "<CR>" })
end

map("t", "<esc>", "<C-\\><C-n>", "Close terminal")
map("n", ",,", cmd("nohlsearch"), "Disable search")
map("n", "<leader>e", cmd("Neotree toggle"), "Neotree toggle")
map("n", "<leader>d", cmd("Neotree toggle document_symbols"), "Neotree symbol")
map("n", "<leader>w", cmd("w"), "Save")
map("n", "<leader>q", cmd("exit"), "Exit")
map("n", "<leader>b", cmd("Bufferin"), "Open Bufferin")
map("n", "<leader>o", cmd("FzfLua files"), "Open BufferBufferinin")
map("n", "<leader>ff", cmd("FzfLua files"), "Open BufferBufferinin")
map("n", "<leader>fg", cmd("FzfLua grep"), "Open BufferBufferinin")
map("i", "jj", "<esc>", "Escape")

map("n", "<leader>h", "<C-w>h", "Go to left")
map("n", "<leader>j", "<C-w>j", "Go to down")
map("n", "<leader>k", "<C-w>k", "Go to up")
map("n", "<leader>l", "<C-w>l", "Go to right")
map("n", "<leader>H", "<C-w>>", "Resize to left")
map("n", "<leader>J", "<C-w>-", "Resize to down")
map("n", "<leader>K", "<C-w>+", "Resize to up")
map("n", "<leader>L", "<C-w><", "Resize to right")

map("n", "U", "<C-r>", "Redo")

-- Create command

vim.api.nvim_create_user_command("Q", "q!", {})
