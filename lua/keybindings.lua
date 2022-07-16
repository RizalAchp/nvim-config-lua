local map = require("utils").map

vim.g.mapleader = " "
-- wrap
map("n", "<Leader>w", "<CMD>:set wrap! linebreak!<CR>") -- set wrap mode in buffer

-- navigation
map("n", "j", "gj") -- motion to up easier
map("n", "k", "gk") -- motion to down easier
map("n", "Y", "y$") -- bind shift-y to copy from cursor position to the end of line
map("n", "<M-b>", "<CMD>bd<CR>") -- bind shift-y to copy from cursor position to the end of line

--- keeping it centered
map("n", "n", "nzzzv") -- keep center while doing next on n bind
map("n", "N", "Nzzzv") -- keep center while doing next on shift-n bind
map("n", "J", "mzJ`z") -- i dont know?, i just copy and paste it from another config

--- moving text
map("v", "J", ":m '>+1<CR>gv=gv") -- move blocked text / visual mode to bottom
map("v", "K", ":m '<-2<CR>gv=gv") -- move blocked text / visual mode to top
map("n", "<Leader>k", ":m .-2<CR>==") -- move line in cursor to top
map("n", "<Leader>j", ":m .+1<CR>==") -- move line in cursor to bottom

-- telescope
map("n", "<Leader>f", "<CMD>Telescope find_files<CR>") -- telescope command to find files
map("n", "<Leader>lg", "<CMD>Telescope live_grep<CR>") -- telescope command to grep file
map("n", "<Leader>b", "<CMD>Telescope buffers<CR>") -- telescope command to find in buffer
map("n", "<Leader>r", "<CMD>Telescope bibtex<CR>") -- and again, i dont know, i just copy and paste it

--- quicklist
map("n", "<Leader>qn", "<CMD>:cnext<CR>") -- idontknow, lol
map("n", "<Leader>qp", "<CMD>:cprev<CR>") -- idontknow, lol
map("n", "<Leader>qo", "<CMD>:copen<CR>") -- idontknow, lol

-- lua tree
map("n", "<Leader>nn", "<CMD>NvimTreeToggle<CR>") -- toggle menu tree with NvimTreeToggle
map("n", "<Leader>nf", "<CMD>NvimTreeFindFileToggle<CR>") -- idk? but it toggle the menu too, so what ever
map("n", "<Leader>nr", "<CMD>NvimTreeRefresh<CR>") -- refresh the menu i guess?

-- language server
map("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>") -- language server binding for the definition
map("n", "gi", "<CMD>lua vim.lsp.buf.implementation()<CR>") -- language server binding for the implementation
map("n", "gsh", "<CMD>lua vim.lsp.buf.signature_help()<CR>") -- language server binding for the signature_help
map("n", "grr", "<CMD>lua vim.lsp.buf.references()<CR>") -- language server binding for the references
map("n", "grn", "<CMD>lua vim.lsp.buf.rename()<CR>") -- language server binding for rename a text (same as regex or (%s/text/text)
map("n", "ge", "<CMD>lua vim.lsp.buf.hover()<CR>") -- language server binding for hoverin on
map("n", "gca", "<CMD>lua vim.lsp.buf.code_action()<CR>") -- language server binding for code action in buffer
map("n", "gsd", "<CMD>lua vim.diagnostic.get()<CR>") -- language server binding for showing ine diagnostic
map("n", "gss", "<CMD>lua vim.diagnostic.open_float()<CR>")
map("n", "gh", "<CMD>lua vim.diagnostic.hide()<CR>")
map("n", "gf", "<CMD>lua vim.lsp.buf.formatting()<CR>") -- language server binding formating the buffer opened
map("v", "ggf", "<CMD>lua FormatRangeOperator()<CR>") -- language server binding formating the buffer opened

-- neogit
map("n", "<Leader>gt", "<CMD>Neogit<CR>") -- neogit command for opening neogit plugin(git in vim)
map("n", "<Leader>gtc", "<CMD>Neogit commit<CR>") -- neogit command for commit a git change
map("n", "<Leader>gtws", "<CMD>:lua require('telescope').extensions.git_worktree.git_worktrees()<CR>") -- idk, worktree maybe? lol
map("n", "<Leader>gtwc", "<CMD>:lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>") -- idk, lol

--- commments
map("n", "<M-/>", "<Plug>kommentary_line_increase") -- add comments on cursor position
map("n", "<Leader>/", "<Plug>kommentary_motion_increase") -- add commans too, lol idk, just see the documentation for komentary
map("x", "<M-/>", "<Plug>kommentary_visual_increase") -- add commans too, lol idk, just see the documentation for komentary
map("n", "<M-d>", "<Plug>kommentary_line_decrease") -- add commans too, lol idk, just see the documentation for komentary
map("n", "<Leader>d", "<Plug>kommentary_motion_decrease") -- add commans too, lol idk, just see the documentation for komentary
map("x", "<M-d>", "<Plug>kommentary_visual_decrease") -- add commans too, lol idk, just see the documentation for komentary

--- buffline
map("n", "<M-TAB>", "<CMD>BufferLineCycleNext<CR>") -- binding for togle to next tab
map("n", "<M-S-TAB>", "<CMD>BufferLineCyclePrev<CR>") -- binding for togle to previous tab
map("n", "<Leader>.", "<CMD>BufferLineMoveNext<CR>") -- binding for swap tab to next tab
map("n", "<Leader>,", "<CMD>BufferLineMovePrev<CR>") -- binding for swap tab to previous tab
map("n", "<Silent>be", "<CMD>BufferLineSortByExtension<CR>") -- shorting tab by extensions
map("n", "<Silent>bd", "<CMD>BufferLineSortByDirectory<CR>") -- shorting tab by directory
map("n", "<Silent><mymap>", "<CMD>:lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>") -- idk lol
