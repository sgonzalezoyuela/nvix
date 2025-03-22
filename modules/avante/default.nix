{ lib, ... }:
{

  plugins.avante = {
    enable = true;
    autoLoad = true;

    luaConfig.post = ''
        vim.opt.laststatus = 3
        require("avante").setup({
        claude = {
          model = "claude-3-7-sonnet-20250219",  -- Updated model value
        },
        windows = {
            position = "left"
        }
      })
    '';
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
