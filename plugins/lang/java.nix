{ lib, pkgs, ... }:
{
  plugins = {
    jdtls = {
      enable = true;
      settings = {
        cmd = [
          (lib.getExe pkgs.jdt-language-server)
        ];
      };
    };
  };
}
