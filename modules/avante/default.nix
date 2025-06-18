{ lib, ... }:
{
  plugins.avante = {
    enable = true;
    autoLoad = true;
    luaConfig.post = ''
      require("avante").setup({

        --claude = {
        --  model = "claude-3-7-sonnet-20250219"  -- Updated model value
        --},
        providers = {
          gemini = {
           model = "gemini-2.5-pro"
          },

          claude = {
           model = "claude-4-0-sonnet-20250514"
          },
        },

        windows = {
          ---@alias AvantePosition "right" | "left" | "top" | "bottom" | "smart"
          position = "left",
          wrap = true, -- similar to vim.o.wrap
          width = 30, -- default % based on available width in vertical layout
          height = 30, -- default % based on available height in horizontal layout
          sidebar_header = {
            enabled = true, -- true, false to enable/disable the header
            align = "center", -- left, center, right for title
            rounded = true,
          },
          input = {
            prefix = "> ",
            height = 8, -- Height of the input window in vertical layout
          },
          edit = {
            border = "rounded",
            start_insert = false, -- Start insert mode when opening the edit window
          },
          ask = {
            floating = false, -- Open the 'AvanteAsk' prompt in a floating window
            border = "rounded",
            start_insert = false, -- Start insert mode when opening the ask window
            ---@alias AvanteInitialDiff "ours" | "theirs"
            focus_on_apply = "ours", -- which diff to focus after applying
          },
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
