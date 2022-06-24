### binding for the key bind for this config
| Mode | Key | Commands | Descriptions |
| :----: | :----: | :----: | ----: |
|n| <Leader>w| :set wrap! linebreak!<cr>|set wrap mode in buffer|
|n| j| gj|motion to up easier|
|n| k| gk|motion to down easier|
|n| Y| y$|bind shift-y to copy from cursor position to the end of line|
|n| n| nzzzv|keep center while doing next on n bind|
|n| N| Nzzzv|keep center while doing next on shift-n bind|
|n| J| mzJ`z|i dont know?, i just copy and paste it from another config|
|v| J| :m '>+1<CR>gv=gv|move blocked text / visual mode to bottom|
|v| K| :m '<-2<CR>gv=gv|move blocked text / visual mode to top|
|n| <leader>k| :m .-2<CR>==|move line in cursor to top|
|n| <leader>j| :m .+1<CR>==|move line in cursor to bottom|
|n| <Leader>f| <cmd>Telescope find_files<cr>|telescope command to find files|
|n| <Leader>fg| <cmd>Telescope live_grep<cr>|telescope command to grep file|
|n| <Leader>b| <cmd>Telescope buffers<cr>|telescope command to find in buffer|
|n| <Leader>r| <cmd>Telescope bibtex<cr>|and again, i dont know, i just copy and paste it|
|n| <leader>qn| <cmd>:cnext<cr>|idontknow, lol|
|n| <leader>qp| <cmd>:cprev<cr>|idontknow, lol|
|n| <leader>qo| <cmd>:copen<cr>|idontknow, lol|
|n| <Leader>nn| <cmd>NvimTreeToggle<cr>|toggle menu tree with NvimTreeToggle|
|n| <Leader>nf| <cmd>NvimTreeFindFileToggle<cr>|idk? but it toggle the menu too, so what ever|
|n| <Leader>nr| <cmd>NvimTreeRefresh<cr>|refresh the menu i guess?|
|n| <Leader>gd| <cmd>lua vim.lsp.buf.definition()<CR>|language server binding for the definition|
|n| <Leader>gi| <cmd>lua vim.lsp.buf.implementation()<CR>|language server binding for the implementation|
|n| <Leader>gsh| <cmd>lua vim.lsp.buf.signature_help()<CR>|language server binding for the signature_help|
|n| <Leader>grr| <cmd>lua vim.lsp.buf.references()<CR>|language server binding for the references|
|n| <Leader>grn| <cmd>lua vim.lsp.buf.rename()<CR>|language server binding for rename a text (same as regex or (%s/text/text)|
|n| <Leader>gh| <cmd>lua vim.lsp.buf.hover()<CR>|language server binding for hoverin on|
|n| <Leader>gca| <cmd>lua vim.lsp.buf.code_action()<CR>|language server binding for code action in buffer|
|n| <Leader>gsd| <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>|language server binding for showing ine diagnostic|
|n| <Leader>gn| <cmd>lua vim.lsp.diagnostic.goto_next()<CR>|language server binding for go to next diasnotic|
|n| <Leader>gp| <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>|language server binding for go previous diasnotic|
|n| <Leader>gf| <cmd>Format<CR>|language server binding formating the buffer opened|
|n| <Leader>gt| <cmd>Neogit<CR>|neogit command for opening neogit plugin(git in vim)|
|n| <Leader>gtc| <cmd>Neogit commit<CR>|neogit command for commit a git change|
|n| <Leader>gtws| <cmd>:lua require('telescope').extensions.git_worktree.git_worktrees()<cr>|idk, worktree maybe? lol|
|n| <Leader>gtwc| <cmd>:lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>|idk, lol|
|n| <Leader>c| <cmd>kommentary_line_increase<cr>|add comments on cursor position|
|n| <Leader>/| <cmd>kommentary_motion_increase<cr>|add commans too, lol idk, just see the documentation for komentary|
|x| <Leader>/| <cmd>kommentary_visual_increase<cr>|add commans too, lol idk, just see the documentation for komentary|
|n| <Leader>/c| <cmd>kommentary_line_decrease<cr>|add commans too, lol idk, just see the documentation for komentary|
|n| <Leader>/d| <cmd>kommentary_motion_decrease<cr>|add commans too, lol idk, just see the documentation for komentary|
|x| <Leader>/d| <cmd>kommentary_visual_decrease<cr>|add commans too, lol idk, just see the documentation for komentary|
|n| <M-TAB>| <cmd>BufferLineCycleNext<cr>|binding for togle to next tab|
|n| <M-S-TAB>| <cmd>BufferLineCyclePrev<cr>|binding for togle to previous tab|
|n|<Leader>.| <cmd>BufferLineMoveNext<cr>|binding for swap tab to next tab|
|n|<Leader>||binding for swap tab to previous tab|
|n|<silent>be| <cmd>BufferLineSortByExtension<cr>|shorting tab by extensions|
|n|<silent>bd| <cmd>BufferLineSortByDirectory<cr>|shorting tab by directory|
|n|<silent><mymap>| <cmd>:lua require'bufferline'.sort_buffers_by(function (buf_a|idk lol|
|n| <leader>z| <cmd>ZenMode<cr>|zen mode?|
