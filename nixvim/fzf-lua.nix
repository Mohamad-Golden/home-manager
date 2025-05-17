{
  programs.nixvim.plugins.fzf-lua = {
    enable = true;
    settings = {
      oldfiles = {
        cwd_only = true;
        include_current_session = true;
      };
    };
    keymaps = {
      "<leader>f" = {
        action = "oldfiles";
        mode = [
          "n"
          "i"
        ];
      };
      # "<leader><space>" = {
      #   action = "oldfiles";
      # };
      "<leader><space>" = {
        action = "files";
        mode = [
          "n"
          "i"
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
