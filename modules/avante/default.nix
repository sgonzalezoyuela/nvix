{ lib, ... }:
{
  plugins.avante = {
    enable = true;
    autoLoad = true;

    settings = {
      # Claude MUST be configured here (luaConfig.pre)
      claude = {
        model = "claude-sonnet-4-20250514";
        extra_request_body = {
          temperature = 0;
          max_tokens = 64000;
        };
      };

    };

    luaConfig.post = ''
      require("avante").setup({
        -- Gemini MUST be configured here (luaConfig.post)
        providers = {
          gemini = {
            model = "gemini-2.5-pro",

            extra_request_body = {
              --temperature = 0.75,
              max_tokens = 65536,
            },
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
