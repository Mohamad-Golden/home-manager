{
  programs.nixvim.plugins.fzf-lua = {
    enable = true;
    settings = {
      oldfiles = {
        cwd_only = true;
        include_current_session = true;
      };
      files = {
        fd_opts = {
          __raw = "[[--color=never --hidden --type f --type l --exclude .git --exclude *.svg]]";
        };
      };
      # grep = {
      #   rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 -e";
      # };
    };
    keymaps = {
      "<leader>f" = {
        action = "oldfiles";
        mode = [
          "n"
        ];
      };
      # "<leader><space>" = {
      #   action = "oldfiles";
      # };
      "<leader><space>" = {
        action = "files";
        mode = [
          "n"
        ];
      };
      # "<leader>gf" = {
      #   action = "files";
      # };
      "<leader>sg" = {
        action = "live_grep_native";
      };
      # "<leader>sw" = {
      #   action = "grep_string";
      # };
      "<leader>sr" = {
        action = "resume";
      };
      "<leader>sd" = {
        action = "diagnostics";
      };
      "<leader>st" = {
        action = "treesitter";
      };
      "<leader>sb" = {
        action = "buffers";
      };
      "gd" = {
        action = "lsp_definitions";
      };
      "gr" = {
        action = "lsp_references";
      };
      "<leader>ld" = {
        action = "lsp_document_diagnostics";
      };
      "<leader>lwd" = {
        action = "lsp_document_diagnostics";
      };
      "gf" = {
        action = "lsp_finder";
      };
    };
  };
}
