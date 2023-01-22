require 'paq' {
    'savq/paq-nvim';
    'Shatur/neovim-ayu';
    'nvim-lualine/lualine.nvim';
    'kyazdani42/nvim-web-devicons';
    'vimpostor/vim-tpipeline';
    -- Navigation
    'nvim-lua/plenary.nvim';
    'ThePrimeagen/harpoon';
    {'nvim-telescope/telescope-fzf-native.nvim', run='make'};
    {'nvim-telescope/telescope.nvim', tag='0.1.0'};
    -- Highlighting
    {'nvim-treesitter/nvim-treesitter', {run=':TSUpdate'}};
    -- Autocompletion
    {'VonHeikemen/lsp-zero.nvim'};

    -- LSP Support
    {'neovim/nvim-lspconfig'};
    {'williamboman/mason.nvim'};
    {'williamboman/mason-lspconfig.nvim'};

    -- Autocompletion
    {'hrsh7th/nvim-cmp'};
    {'hrsh7th/cmp-buffer'};
    {'hrsh7th/cmp-path'};
    {'saadparwaiz1/cmp_luasnip'};
    {'hrsh7th/cmp-nvim-lsp'};
    {'hrsh7th/cmp-nvim-lua'};

    -- Snippets
    {'L3MON4D3/LuaSnip'};
    {'rafamadriz/friendly-snippets'};
}
