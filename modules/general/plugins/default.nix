{ config, lib, ... }:
{
  plugins = {
    # Must have plugins to have a decent flow of work
    tmux-navigator.enable = true;
    smart-splits.enable = true;
    web-devicons.enable = true;
    lz-n.enable = true;
    mini = {
      enable = true;
      mockDevIcons = true;
      modules = {
        ai = { };
        icons = { };
        pairs = { };
        surround = { };
        operators = { };
        bufremove = { };
      };
    };
    which-key = {
      enable = true;
      settings.spec = config.wKeyList;
      settings.preset = "helix";
    };
  };
  opts = {
    timeout = true;
    timeoutlen = 250;
  };
  imports = with builtins; with lib;
    map (fn: ./${fn})
      (filter
        (fn: (
          fn != "default.nix"
          && !hasSuffix ".md" "${fn}"
        ))
        (attrNames (readDir ./.)));
}
