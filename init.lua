
require("configs")
require("plugins")
require("keybindings")
require("workspace_config")

--[[ for _, source in ipairs {
  "configs",
  "plugins",
  "keybindings",
	"workspace_config"
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then
    vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault)
  end
end ]]
