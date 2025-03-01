{ self, ... }:
{
  imports = [
    ./core.nix
    self.nvixModules.lang
    self.nvixModules.python
  ];
}
