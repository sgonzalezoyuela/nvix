{
  plugins = {
    haskell-scope-highlighting.enable = true;
    lsp.servers.hls = {
      enable = true;
      installGhc = false; # Relay on nix shell to get the tools
    };
  };
}
