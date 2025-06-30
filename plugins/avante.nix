{ lib, ... }:
{
  plugins.avante = {
    enable = true;
    autoLoad = true;

    settings = {

      provider = "claude";

      providers = {

        claude = {
          #endpoint = "https://api.anthropic.com";
          extra_request_body = {
            max_tokens = 64000;
            temperature = 0;
          };
          model = "claude-sonnet-4-20250514";
        };

        gemini = {
          extra_request_body = {
            max_tokens = 64000;
            temperature = 0;
          };
          model = "gemini-2.5-flash";
        };
      };
    };

    luaConfig.post = ''
      require("avante").setup({
        -- TODO : Move to NIX expression
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
}
