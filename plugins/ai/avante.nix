{ lib, ... }:
{
  plugins.avante = {
    enable = true;
    autoLoad = true;

    settings = {

      provider = "claude";

      providers = {

        copilot = {
          #TODO: Implement claude 4
          # FIXME: Fix cursor movement changing window size
          model = "gpt-4.1";
          api_key_name = "OPENAI_API_KEY";
          endpoint = "https://api.githubcopilot.com";
          extra_request_body = {
            temperature = 0;
            max_tokens = 8192;
          };
        };

        claude = {
          #endpoint = "https://api.anthropic.com";
          extra_request_body = {
            max_tokens = 64000;
            temperature = 0;
          };
          model = "claude-sonnet-4-20250514";
        };

      };
    };

    luaConfig.post = ''
      require("avante").setup({

        providers = {
          -- gemini not in nvix settings
          gemini = {
            model = "gemini-2.5-pro",
            timeout = 30000, -- Timeout in milliseconds
            extra_request_body = {
              temperature = 0,
              max_tokens = 65534,
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
}
