{
  programs.nixvim.plugins.lsp = {
    enable = true;
    autoLoad = true;

    keymaps = {
      silent = true;
      diagnostic = {
        "[d" = "goto_prev";
        "]d" = "goto_next";
        "<leader>d" = "open_float";
      };
      lspBuf = {
        "<leader>rn" = "rename";
        "<leader>a" = "code_action";
        # "gd" = "definition";
        # "gr" = "references";
        # "gi" = "implementation";
        "K" = "hover";

        # "<C-k>" = "signature_help";
      };
      # extra = [
      #   {
      #     action = {
      #       __raw = ''
      #         function ()
      #           vim.lsp.buf.definition({ loclist = true })
      #         end
      #       '';
      #     };
      #     key = "gd";
      #     mode = "n";
      #   }
      # ];
    };

    servers = {
      kotlin_language_server = {
        enable = true;
        filetypes = [
          "kotlin"
        ];
      };

      ts_ls = {
        enable = false;
        filetypes = [
          "javascript"
          "javascriptreact"
          "typescript"
          "typescriptreact"
        ];
      };

      html = {
        enable = true;
        filetypes = [
          "html"
        ];
      };

      tailwindcss = {
        enable = true;
        package = null;
        filetypes = [
          "css"
          "scss"
          "javascriptreact"
          "typescriptreact"
        ];
        settings = {
          tailwindCSS = {
            classFunctions = [
              "cva"
              "cx"
            ];
          };
        };
      };

      bashls = {
        enable = true;
        filetypes = [
          "sh"
          "bash"
        ];
      };

      cssls = {
        enable = true;
        filetypes = [
          "css"
        ];
      };

      sqls = {
        enable = true;
        filetypes = [
          "sql"
        ];
        package = null;
        # cmd = [
        #   "sqls"
        #   "--config"
        #   "vim.loop.cwd()"
        #
        # ];
      };

      ansiblels = {
        enable = true;
        filetypes = [
          "playbook"
        ];
      };

      lua_ls = {
        enable = true;
        filetypes = [
          "lua"
        ];
      };

      gopls = {
        enable = true;
        filetypes = [
          "go"
        ];
      };

      golangci_lint_ls = {
        enable = true;
      };

      dockerls = {
        enable = true;
        filetypes = [ "dockerfile" ];
      };

      eslint = {
        enable = false;
        filetypes = [
          "javascript"
          "javascriptreact"
          "typescript"
          "typescriptreact"
        ];
      };

      yamlls = {
        enable = true;
        filetypes = [
          "yaml"
          "yml"
        ];
      };

      nixd = {
        enable = true;

        filetypes = [ "nix" ];
      };

      jsonls = {
        enable = false;
        filetypes = [
          "json"
          "jsonc"
        ];
      };

      biome = {
        enable = false;
      };

    };
  };

}
