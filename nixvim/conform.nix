{
  pkgs,
  lib,
  ...
}:
{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        javascript = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };

        javascriptreact = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };

        typescript = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };

        typescriptreact = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };
        json = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };

        jsonc = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };

        css = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };

        scss = {
          __unkeyed-1 = "biome";
          __unkeyed-2 = "prettier";
          stop_after_first = true;
        };

        nix = [ "nixfmt" ];

        markdown = {
          __unkeyed-1 = "prettier";
          stop_after_first = true;
        };
      };
      default_format_opts = {
        lsp_format = "fallback";
      };
      formatters = {
        nixfmt = {
          command = lib.getExe pkgs.nixfmt-rfc-style;
        };
        prettierd = {
          command = lib.getExe pkgs.prettierd;
          require_cwd = true;
          cwd = {
            __raw = "require(\"conform.util\").root_file({ \".prettierrc.json\" })";
          };
        };
        prettier = {
          command = lib.getExe pkgs.nodePackages.prettier;
          require_cwd = true;
          cwd = {
            __raw = "require(\"conform.util\").root_file({ \".prettierrc.json\" })";
          };
        };
        biome = {
          command = lib.getExe pkgs.biome;
          require_cwd = true;
          cwd = {
            __raw = "require(\"conform.util\").root_file({ \"biome.json\" })";
          };
        };
      };
      format_on_save = {
        lsp_format = "fallback";
        timeout_ms = 4500;
      };
    };
  };
}
