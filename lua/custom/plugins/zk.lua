-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.keymap.set('n', '<leader>zn', function ()
    local title = vim.fn.input('Title: ')
    local directory = vim.fn.input('Directory: ')
    require('zk').new({ title=title, dir=directory})
end , { desc = "[N]ew note" })
vim.keymap.set('v', '<leader>zn', "<Cmd>'<,'>ZkNewFromTitleSelection {dir=vim.fn.input('Directory: ')}<CR>", {desc = "[N]ew note with selection as title"})
vim.keymap.set('n', '<leader>zf', "<Cmd>ZkNotes { sort = {'modified'} }<CR>", {desc = "[F]ind notes"})

return {
    'zk-org/zk-nvim',
    config = function ()
	require('zk').setup({
	   picker = "telescope",
	   lsp={
		config = {
		    cmd = {"zk", "lsp"},
		    name = "zk",
		    root_dir = os.getenv("ZK_NOTEBOOK_DIR") or ".",
		},
		autostart=true,
		auto_attach = {
		    enabled=true,
		    filetype={"markdown"},
		},
	    },
	})

	-- require("lspconfig").zk.setup({})
    end
}

