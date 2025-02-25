{ self, ... }:
{
  imports = [
    ./core.nix
    self.nvixModules.lang
  ];
}
