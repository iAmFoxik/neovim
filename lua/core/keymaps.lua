local opts = { noremap = true }

local map = vim.keymap.set

local function cmd(command)
  return table.concat({ "<CMD>", command, "<CR>" })
end

map("t", "<esc>", "<C-\\><C-n>", { desc = "Close terminal" })
map("n", ",,", cmd("nohlsearch"), { desc = "Disable search" })
map("n", "<leader>e", cmd("Neotree toggle"), { desc = "Neotree toggle" })
map("n", "<leader>d", cmd("Neotree toggle document_symbols"), { desc = "Neotree symbol" })
map("n", "<leader>b", cmd("Neotree toggle buffers"), { desc = "Neotree buffer" })
map("n", "<C-s>", cmd("w"), { desc = "Save" })
map("n", "<C-X>", cmd("wq"), { desc = "Save and Exit" })
map("n", "<C-x>", cmd("exit"), { desc = "Exit" })
