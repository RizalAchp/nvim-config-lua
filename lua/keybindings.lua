local map = require("utils").map
vim.g.mapleader = " "
-- wrap
map("n", "<Leader>w", ":set wrap! linebreak!<cr>") -- set wrap mode in buffer

-- navigation
map("n", "j", "gj") -- motion to up easier
map("n", "k", "gk") -- motion to down easier
map("n", "Y", "y$") -- bind shift-y to copy from cursor position to the end of line
map("n", "<M-b>", "<cmd>bd<cr>") -- bind shift-y to copy from cursor position to the end of line

--- keeping it centered
map("n", "n", "nzzzv") -- keep center while doing next on n bind
map("n", "N", "Nzzzv") -- keep center while doing next on shift-n bind
map("n", "J", "mzJ`z") -- i dont know?, i just copy and paste it from another config

--- moving text
map("v", "J", ":m '>+1<CR>gv=gv") -- move blocked text / visual mode to bottom
map("v", "K", ":m '<-2<CR>gv=gv") -- move blocked text / visual mode to top
map("n", "<leader>k", ":m .-2<CR>==") -- move line in cursor to top
map("n", "<leader>j", ":m .+1<CR>==") -- move line in cursor to bottom

-- telescope
map("n", "<Leader>f", "<cmd>Telescope find_files<cr>") -- telescope command to find files
map("n", "<Leader>fg", "<cmd>Telescope live_grep<cr>") -- telescope command to grep file
map("n", "<Leader>b", "<cmd>Telescope buffers<cr>") -- telescope command to find in buffer
map("n", "<Leader>r", "<cmd>Telescope bibtex<cr>") -- and again, i dont know, i just copy and paste it

--- quicklist
map("n", "<leader>qn", "<cmd>:cnext<cr>") -- idontknow, lol
map("n", "<leader>qp", "<cmd>:cprev<cr>") -- idontknow, lol
map("n", "<leader>qo", "<cmd>:copen<cr>") -- idontknow, lol

-- lua tree
map("n", "<Leader>nn", "<cmd>NvimTreeToggle<cr>") -- toggle menu tree with NvimTreeToggle
map("n", "<Leader>nf", "<cmd>NvimTreeFindFileToggle<cr>") -- idk? but it toggle the menu too, so what ever
map("n", "<Leader>nr", "<cmd>NvimTreeRefresh<cr>") -- refresh the menu i guess?

-- language server
-- map("n", "<Leader>gd", "<cmd>lua vim.lsp.buf.definition()<cr>") -- language server binding for the definition
-- map("n", "<Leader>gi", "<cmd>lua vim.lsp.buf.implementation()<cr>") -- language server binding for the implementation
-- map("n", "<Leader>gsh", "<cmd>lua vim.lsp.buf.signature_help()<cr>") -- language server binding for the signature_help
-- map("n", "<Leader>grr", "<cmd>lua vim.lsp.buf.references()<cr>") -- language server binding for the references
-- map("n", "<Leader>grn", "<cmd>lua vim.lsp.buf.rename()<cr>") -- language server binding for rename a text (same as regex or (%s/text/text)
-- map("n", "<Leader>gh", "<cmd>lua vim.lsp.buf.hover()<cr>") -- language server binding for hoverin on
-- map("n", "<Leader>gca", "<cmd>lua vim.lsp.buf.code_action()<cr>") -- language server binding for code action in buffer
-- map("n", "<Leader>gsd", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>") -- language server binding for showing ine diagnostic
-- map("n", "<Leader>gn", "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>") -- language server binding for go to next diasnotic
-- map("n", "<Leader>gp", "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>") -- language server binding for go previous diasnotic
-- map("n", "<Leader>gf", "<cmd>Format<cr>") -- language server binding formating the buffer opened
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>") -- language server binding for the definition
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>") -- language server binding for the implementation
-- map("n", "gsh", "<cmd>lua vim.lsp.buf.signature_help()<cr>") -- language server binding for the signature_help
map("n", "grr", "<cmd>lua vim.lsp.buf.references()<cr>") -- language server binding for the references
map("n", "grn", "<cmd>lua vim.lsp.buf.rename()<cr>") -- language server binding for rename a text (same as regex or (%s/text/text)
map("n", "ge", "<cmd>lua vim.lsp.buf.hover()<cr>") -- language server binding for hoverin on
map("n", "gca", "<cmd>lua vim.lsp.buf.code_action()<cr>") -- language server binding for code action in buffer
map("n", "gsd", "<cmd>lua vim.diagnostic.get()<cr>") -- language server binding for showing ine diagnostic
map("n", "gf", "<cmd>Format<cr>") -- language server binding formating the buffer opened
map("n", "gss", "<cmd>lua vim.diagnostic.open_float()<cr>")
map("n", "gh", "<cmd>lua vim.diagnostic.hide()<cr>")

-- neogit
map("n", "<Leader>gt", "<cmd>Neogit<CR>") -- neogit command for opening neogit plugin(git in vim)
map("n", "<Leader>gtc", "<cmd>Neogit commit<CR>") -- neogit command for commit a git change
map("n", "<Leader>gtws", "<cmd>:lua require('telescope').extensions.git_worktree.git_worktrees()<cr>") -- idk, worktree maybe? lol
map("n", "<Leader>gtwc", "<cmd>:lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>") -- idk, lol

--- commments
map("n", "<Leader>c", "<cmd>kommentary_line_increase<cr>") -- add comments on cursor position
map("n", "<Leader>/", "<cmd>kommentary_motion_increase<cr>") -- add commans too, lol idk, just see the documentation for komentary
map("x", "<Leader>/", "<cmd>kommentary_visual_increase<cr>") -- add commans too, lol idk, just see the documentation for komentary
map("n", "<Leader>/c", "<cmd>kommentary_line_decrease<cr>") -- add commans too, lol idk, just see the documentation for komentary
map("n", "<Leader>/d", "<cmd>kommentary_motion_decrease<cr>") -- add commans too, lol idk, just see the documentation for komentary
map("x", "<Leader>/d", "<cmd>kommentary_visual_decrease<cr>") -- add commans too, lol idk, just see the documentation for komentary

--- buffline
map("n", "<M-TAB>", "<cmd>BufferLineCycleNext<cr>") -- binding for togle to next tab
map("n", "<M-S-TAB>", "<cmd>BufferLineCyclePrev<cr>") -- binding for togle to previous tab
map("n","<Leader>.", "<cmd>BufferLineMoveNext<cr>") -- binding for swap tab to next tab
map("n","<Leader>,", "<cmd>BufferLineMovePrev<cr>") -- binding for swap tab to previous tab
map("n","<silent>be", "<cmd>BufferLineSortByExtension<cr>") -- shorting tab by extensions
map("n","<silent>bd", "<cmd>BufferLineSortByDirectory<cr>") -- shorting tab by directory
map("n","<silent><mymap>", "<cmd>:lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<cr>") -- idk lol

--- zen-mode
map("n", "<leader>z", "<cmd>ZenMode<cr>") -- zen mode?
