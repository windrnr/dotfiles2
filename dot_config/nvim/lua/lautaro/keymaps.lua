local map = function(keys, func, desc)
	vim.keymap.set("n", keys, func, { desc = desc, silent = true, noremap = true })
end

map("YY", "va{Vy", "Grab content between braces")
map("<up>", "<C-w><up>", "Move to the tab above")
map("<down>", "<C-w><down>", "Move to the tab below")
map("<left>", "<C-w><left>", "Move to the left tab")
map("<right>", "<C-w><right>", "Move to the right tab")
map("<A-k>", ":m-2<CR>==", "Move the line above")
map("<A-j>", ":m+1<CR>==", "Move the line below")
map("<F11>", ":set spell!<CR>", "Toggle spell parsing")
map("<F8>", ":lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>", "Enable inlay hints")
map("<leader>pv", vim.cmd.Ex, "Open the current folder")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, desc = "Virtual: Move the line above" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, desc = "Virtual: Move the line below" })
