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
map("n", "<leader>b", cmd("Neotree toggle buffers"), "Neotree buffer")
map("n", "<C-s>", cmd("w"), "Save")
map("n", "<C-X>", cmd("wq"), "Save and Exit")
map("n", "<C-x>", cmd("exit"), "Exit")
