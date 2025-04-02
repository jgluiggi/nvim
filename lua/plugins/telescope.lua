return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
    	config = function()
		local builtin = require('telescope.builtin')
    local find_all = function ()
      builtin.find_files({ hidden = true , find_command = { 'rg', '--files', '--hidden', '--glob', '!.git/*' } })
    end
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fa', find_all, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

	end,
    }
