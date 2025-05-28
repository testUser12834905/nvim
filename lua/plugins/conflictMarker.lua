return {
	"rhysd/conflict-marker.vim",
	lazy = true,
	setup = function()
		require("conflict-marker").setup({
			on_attach = function(conflict)
				local map = function(key, fn)
					vim.keymap.set("n", key, fn, { buffer = conflict.bufnr })
				end

				-- or you can map these to <cmd>ChooseOurs<cr>

				map("co", function()
					conflict:choose_ours()
				end)
				map("ct", function()
					conflict:choose_theirs()
				end)
				map("cb", function()
					conflict:choose_both()
				end)
				map("cn", function()
					conflict:choose_none()
				end)
			end,
		})
	end,
}
