### binding for the key bind for this config
| Mode | Key | Commands | Descriptions |
| :----: | :----: | :----: | ----: |
|"Normal"|"**spasi + w**"|"*:set wrap! linebreak!*"|set wrap mode in buffer|
|"Normal"|"**j**"|"*gj*"|motion to up easier|
|"Normal"|"**k**"|"*gk*"|motion to down easier|
|"Normal"|"**Y**"|"*y$*"|bind shift-y to copy from cursor position to the end of line|
|"Normal"|"**Altkey + M-b**"|"*bd*"|bind shift-y to copy from cursor position to the end of line|
|"Normal"|"**n**"|"*nzzzv*"|keep center while doing next on n bind|
|"Normal"|"**N**"|"*Nzzzv*"|keep center while doing next on shift-n bind|
|"Normal"|"**J**"|"*mzJ`z*"|i dont know?, i just copy and paste it from another config|
|"Visual Select"|"**J**"|"*:m '>+1<CR>gv=gv*"|move blocked text / visual mode to bottom|
|"Visual Select"|"**K**"|"*:m '<-2<CR>gv=gv*"|move blocked text / visual mode to top|
|"Normal"|"**spasi + k**"|"*:m .-2<CR>==*"|move line in cursor to top|
|"Normal"|"**spasi + j**"|"*:m .+1<CR>==*"|move line in cursor to bottom|
|"Normal"|"**spasi + f**"|"*Telescope find_files*"|telescope command to find files|
|"Normal"|"**spasi + lg**"|"*Telescope live_grep*"|telescope command to grep file|
|"Normal"|"**spasi + b**"|"*Telescope buffers*"|telescope command to find in buffer|
|"Normal"|"**spasi + r**"|"*Telescope bibtex*"|and again, i dont know, i just copy and paste it|
|"Normal"|"**spasi + qn**"|"*:cnext*"|idontknow, lol|
|"Normal"|"**spasi + qp**"|"*:cprev*"|idontknow, lol|
|"Normal"|"**spasi + qo**"|"*:copen*"|idontknow, lol|
|"Normal"|"**spasi + nn**"|"*NvimTreeToggle*"|toggle menu tree with NvimTreeToggle|
|"Normal"|"**spasi + nf**"|"*NvimTreeFindFileToggle*"|idk? but it toggle the menu too, so what ever|
|"Normal"|"**spasi + nr**"|"*NvimTreeRefresh*"|refresh the menu i guess?|
|"Normal"|"**gd**"|"*lua vim.lsp.buf.definition()*"|language server binding for the definition|
|"Normal"|"**gi**"|"*lua vim.lsp.buf.implementation()*"|language server binding for the implementation|
|"Normal"|"**gsh**"|"*lua vim.lsp.buf.signature_help()*"|language server binding for the signature_help|
|"Normal"|"**grr**"|"*lua vim.lsp.buf.references()*"|language server binding for the references|
|"Normal"|"**grn**"|"*lua vim.lsp.buf.rename()*"|language server binding for rename a text (same as regex or (%s/text/text)|
|"Normal"|"**ge**"|"*lua vim.lsp.buf.hover()*"|language server binding for hoverin on|
|"Normal"|"**gca**"|"*lua vim.lsp.buf.code_action()*"|language server binding for code action in buffer|
|"Normal"|"**gsd**"|"*lua vim.diagnostic.get()*"|language server binding for showing ine diagnostic|
|"Normal"|"**gf**"|"*lua vim.lsp.buf.formatting()*"|language server binding formating the buffer opened|
|"Visual Select"|"**ggf**"|"*lua FormatRangeOperator()*"|language server binding formating the buffer opened|
|"Normal"|"**spasi + gt**"|"*Neogit*"|neogit command for opening neogit plugin(git in vim)|
|"Normal"|"**spasi + gtc**"|"*Neogit commit*"|neogit command for commit a git change|
|"Normal"|"**spasi + gtws**"|"*:lua require('telescope').extensions.git_worktree.git_worktrees()*"|idk, worktree maybe? lol|
|"Normal"|"**spasi + gtwc**"|"*:lua require('telescope').extensions.git_worktree.create_git_worktree()*"|idk, lol|
|"Normal"|"**Altkey + M-/**"|"*plugcommand: kommentary_line_increase*"|add comments on cursor position|
|"Normal"|"**spasi + /**"|"*plugcommand: kommentary_motion_increase*"|add commans too, lol idk, just see the documentation for komentary|
|"Visual"|"**Altkey + M-/**"|"*plugcommand: kommentary_visual_increase*"|add commans too, lol idk, just see the documentation for komentary|
|"Normal"|"**Altkey + M-d**"|"*plugcommand: kommentary_line_decrease*"|add commans too, lol idk, just see the documentation for komentary|
|"Normal"|"**spasi + d**"|"*plugcommand: kommentary_motion_decrease*"|add commans too, lol idk, just see the documentation for komentary|
|"Visual"|"**Altkey + M-d**"|"*plugcommand: kommentary_visual_decrease*"|add commans too, lol idk, just see the documentation for komentary|
|"Normal"|"**Altkey + M-TAB**"|"*BufferLineCycleNext*"|binding for togle to next tab|
|"Normal"|"**Altkey + M-S-TAB**"|"*BufferLineCyclePrev*"|binding for togle to previous tab|
|"Normal"|"**spasi + .**"|"*BufferLineMoveNext*"|binding for swap tab to next tab|
|"Normal"|"**spasi +**"|""|binding for swap tab to previous tab|
|"Normal"|"**silent + be**"|"*BufferLineSortByExtension*"|shorting tab by extensions|
|"Normal"|"**silent + bd**"|"*BufferLineSortByDirectory*"|shorting tab by directory|
|"Normal"|"**silent + <mymap>**"|"*:lua require'bufferline'.sort_buffers_by(function (buf_a"|idk lol|
