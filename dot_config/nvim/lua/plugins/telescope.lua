return {
	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function ()
			require('telescope').setup {
				extensions = {
					fzf = {
						fuzzy = true,
						override_generic_sorter = true,
						override_file_sorter = true,
						case_mode = 'smart_case',
					}
				},
                pickers = {
                    find_files = {
                        theme = 'ivy'
                    },
                    buffers = {
                        theme = 'ivy'
                    }
                }
			}
			require('telescope').load_extension('fzf')

			local builtins = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtins.find_files)
			vim.keymap.set('n', '<C-p>', builtins.git_files)
			vim.keymap.set('n', '<leader>fg', builtins.live_grep)
			vim.keymap.set('n', '<leader>fb', builtins.buffers)
			vim.keymap.set('n', '<leader>fh', builtins.help_tags)
		end
	}
}
