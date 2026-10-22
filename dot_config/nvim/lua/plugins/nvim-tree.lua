return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup()

        local keyset = vim.keymap.set

        keyset('n', '<C-n>', '<cmd>NvimTreeToggle<cr>')
    end
}
