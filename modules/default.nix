{
  flake.nvixModules = {
    utils = ./utils; # Contains utility functions

    git = ./git;
    lsp = ./lsp;
    cmp = ./cmp;
    tex = ./tex;
    java = ./langs/java;
    lang = ./lang;
    rust = ./langs/rust;
    avante = ./avante;
    python = ./langs/python;
    webdev = ./langs/webdev;
    snacks = ./snacks;
    buffer = ./buffer; # Buffer manager/bufferline
    haskell = ./langs/haskell;
    general = ./general; # General Neovim config
    lualine = ./lualine;
    copilot = ./copilot;
    explorer = ./explorer;
    firenvim = ./firenvim;
    dashboard = ./dashboard;
    aesthetics = ./aesthetics;
    treesitter = ./treesitter;
    auto-session = ./auto-session;
    colorschemes = ./colorschemes;
  };
}
