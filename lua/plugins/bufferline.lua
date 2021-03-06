require("bufferline").setup()
require('bufferline').setup ({
  options = {
    mode = "buffers",
		numbers = function(opts)
			return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
		end,
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    name_formatter = function(buf) if buf.name:match('%.md') then return vim.fn.fnamemodify(buf.name, ':t:r') end end,
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 18,
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context) return "("..count..")" end,
    custom_filter = function(buf_number, buf_numbers)
      if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then return true end
      if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then return true end
      if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then return true end
      if buf_numbers[1] ~= buf_number then return true end
    end,
		offsets = {
			{
				filetype = "NvimTree",
				text = function() return vim.fn.getcwd() end,
				highlight = "Directory",
				text_align = "left"
			}
		},
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_buffer_default_icon = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thin",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
		custom_areas = {
			right = function()
				local result = {}
				local seve = vim.diagnostic.severity
				local error = vim.diagnostic.get(0, {severity = seve.ERROR})
				local warning = vim.diagnostic.get(0, {severity = seve.WARN})
				local info = vim.diagnostic.get(0, {severity = seve.INFO})
				local hint = vim.diagnostic.get(0, {severity = seve.HINT})

				if error ~= 0 then
					table.insert(result, {text = "  " .. error, guifg = "#EC5241"})
				end

				if warning ~= 0 then
					table.insert(result, {text = "  " .. warning, guifg = "#EFB839"})
				end

				if hint ~= 0 then
					table.insert(result, {text = "  " .. hint, guifg = "#A3BA5E"})
				end

				if info ~= 0 then
					table.insert(result, {text = "  " .. info, guifg = "#7EA9A7"})
				end
				return result
			end,
		}
  }
})
