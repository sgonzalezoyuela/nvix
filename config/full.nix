{ self, ... }:
{
  imports = [
    ./core.nix
    self.nvixModules.python
    self.nvixModules.rust
    self.nvixModules.webdev
    self.nvixModules.tex
  ];
}
