{
  programs.nixvim.plugins.telescope = {
    enable = false;
    # enabledExtensions = [recent_];
    settings = {
      defaults = {
        pickers = {
          buffers = {
            sort_lastused = true;
          };
        };
      };
    };
    keymaps = {
      "<leader><space>" = {
        action = "oldfiles";
      };
      "<leader>gf" = {
        action = "git_files";
      };
      "<leader>sg" = {
        action = "live_grep";
      };
      "<leader>sw" = {
        action = "grep_string";
      };
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
    };
    extensions = {
      fzf-native = {
        enable = true;
      };
      ui-select = {
        enable = false;
      };
      manix = {
        enable = true;
      };
      frecency = {
        enable = true;
        settings = {
          default_workspace = "CWD";
          show_scores = true;
          show_unindexed = true;
        };
      };
    };
  };
}
