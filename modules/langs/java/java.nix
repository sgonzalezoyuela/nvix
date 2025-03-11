{ lib, pkgs, ... }:
{
  plugins = {
    nvim-jdtls = {
      enable = true;
      cmd = [
        (lib.getExe pkgs.jdt-language-server)
      ];
    };
  };
}
