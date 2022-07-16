-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/rizal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/rizal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/rizal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/rizal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rizal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    config = { " require('plugins/luasnip') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { " require('plugins/bufferline')" },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["git-worktree.nvim"] = {
    config = { " require('plugins/git-worktree') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/git-worktree.nvim",
    url = "https://github.com/ThePrimeagen/git-worktree.nvim"
  },
  ["gruvbox.nvim"] = {
    config = { " require('plugins/theme') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { " require('plugins/blankline') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  kommentary = {
    config = { " require('plugins/commented')" },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lspkind-nvim"] = {
    config = { " require('plugins/lspkind') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { " require('plugins/lualine') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  neogit = {
    commands = { "NeoGit" },
    config = { " require('plugins/neogit') " },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/opt/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nvim-autopairs"] = {
    config = { " require('plugins/autopairs') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { " require('plugins/cmp') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    commands = { "ColorizerAttachToBuffer", "ColorizerToggle", "ColorizerDetachFromBuffer", "ColorizerReloadAllBuffer" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    config = { " require('plugins/lsp_installer_nvim') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { " require('plugins/lspconfig') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { " require('plugins/nvim-tree') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { " require('plugins/treesitter') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ripgrep = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["telescope-bibtex.nvim"] = {
    config = { " require('plugins/telescope') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/telescope-bibtex.nvim",
    url = "https://github.com/nvim-telescope/telescope-bibtex.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    config = { " require('plugins/telescope') " },
    loaded = true,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-eunuch"] = {
    commands = { "Remove", "Delete", "Move", "Rename", "Copy", "Duplicate", "Mkdir", "Cfind", "Clocate", "Lfind", "Wall", "SudoWrite", "SudoEdit" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/rizal/.local/share/nvim/site/pack/packer/opt/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: nvim-colorizer.lua
time([[Setup for nvim-colorizer.lua]], true)
 require('plugins/nvim-colorizer') 
time([[Setup for nvim-colorizer.lua]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
time([[packadd for markdown-preview.nvim]], true)
vim.cmd [[packadd markdown-preview.nvim]]
time([[packadd for markdown-preview.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
 require('plugins/nvim-tree') 
time([[Config for nvim-tree.lua]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
 require('plugins/bufferline')
time([[Config for bufferline.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
 require('plugins/blankline') 
time([[Config for indent-blankline.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
 require('plugins/lualine') 
time([[Config for lualine.nvim]], false)
-- Config for: gruvbox.nvim
time([[Config for gruvbox.nvim]], true)
 require('plugins/theme') 
time([[Config for gruvbox.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
 require('plugins/treesitter') 
time([[Config for nvim-treesitter]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
 require('plugins/lspkind') 
time([[Config for lspkind-nvim]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
 require('plugins/commented')
time([[Config for kommentary]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
 require('plugins/autopairs') 
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
 require('plugins/lspconfig') 
time([[Config for nvim-lspconfig]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
 require('plugins/luasnip') 
time([[Config for LuaSnip]], false)
-- Config for: git-worktree.nvim
time([[Config for git-worktree.nvim]], true)
 require('plugins/git-worktree') 
time([[Config for git-worktree.nvim]], false)
-- Config for: telescope-bibtex.nvim
time([[Config for telescope-bibtex.nvim]], true)
 require('plugins/telescope') 
time([[Config for telescope-bibtex.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
 require('plugins/cmp') 
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
 require('plugins/telescope') 
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
 require('plugins/lsp_installer_nvim') 
time([[Config for nvim-lsp-installer]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerReloadAllBuffer lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerReloadAllBuffer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerDetachFromBuffer lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerDetachFromBuffer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Duplicate lua require("packer.load")({'vim-eunuch'}, { cmd = "Duplicate", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SudoEdit lua require("packer.load")({'vim-eunuch'}, { cmd = "SudoEdit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerAttachToBuffer lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerAttachToBuffer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerToggle lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Cfind lua require("packer.load")({'vim-eunuch'}, { cmd = "Cfind", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Clocate lua require("packer.load")({'vim-eunuch'}, { cmd = "Clocate", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Lfind lua require("packer.load")({'vim-eunuch'}, { cmd = "Lfind", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Wall lua require("packer.load")({'vim-eunuch'}, { cmd = "Wall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SudoWrite lua require("packer.load")({'vim-eunuch'}, { cmd = "SudoWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Remove lua require("packer.load")({'vim-eunuch'}, { cmd = "Remove", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Delete lua require("packer.load")({'vim-eunuch'}, { cmd = "Delete", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Move lua require("packer.load")({'vim-eunuch'}, { cmd = "Move", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Rename lua require("packer.load")({'vim-eunuch'}, { cmd = "Rename", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Copy lua require("packer.load")({'vim-eunuch'}, { cmd = "Copy", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Mkdir lua require("packer.load")({'vim-eunuch'}, { cmd = "Mkdir", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NeoGit lua require("packer.load")({'neogit'}, { cmd = "NeoGit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
