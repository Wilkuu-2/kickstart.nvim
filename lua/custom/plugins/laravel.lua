-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    -- LSP: Laravel
    {'EmranMR/tree-sitter-blade'},
    {
        'adalessa/laravel.nvim',
        dependencies = {
            "nvim-telescope/telescope.nvim",
            'tpope/vim-dotenv',
            'MunifTanjim/nui.nvim',
            "nvimtools/none-ls.nvim",
        },
        cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
        keys = {
          { "<leader>la", ":Laravel artisan<cr>" },
          { "<leader>lr", ":Laravel routes<cr>" },
          { "<leader>lm", ":Laravel related<cr>" },
        },
        event = { "VeryLazy" },
        config = true,
    }

}
