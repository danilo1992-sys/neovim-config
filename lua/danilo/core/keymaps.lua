vim.g.mapleader = " "

local keymap = vim.keymap 

keymap.set("i", "jk", "<ESC>", { desc="Exit insert mode white jk"})

keymap.set("n", "<leader>nh", ":nohl<CR>", {desc="Clear search highlights"})

keymap.set("n", "<leader>+", "<C-a>", { desc="Increment number"})
keymap.set("n", "<leader>-", "<C-x>", { desc="Increment number"})

keymap.set("n", "<leader>sv", "<C-w>v", { desc ="Split window vetically"} )
keymap.set("n", "<leader>sh", "<C-w>a", { desc ="Split window horizonatally"} )
keymap.set("n", "<leader>se", "<C-w>=", { desc ="make split equal size"} )
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc ="close current split"} )

 
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc ="Open new tab"} )
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc ="Close current tab"} )
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc ="Go to next tab"} )
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc ="Go to pevious tab"} )
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc ="Open current buffer in new tab"} )
