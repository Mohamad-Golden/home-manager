{
  programs.nixvim.plugins.treesitter = {
    enable = true;
    folding = true;
    settings = {
      auto_install = false;
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = false;
      };
      indent = {
        enable = true;
      };
      ensure_installed = [
      ];
      # grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars ++ [
      #   pkgs.tree-sitter-grammars.tree-sitter-norg-meta
      # ];
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = false;
          node_decremental = "grm";
          node_incremental = "grn";
          scope_incremental = "grc";
        };
      };
      json = {
        enable = true;
        disable = [ "conceal" ];
      };
    };
  };
}
