let
  snippets = ./snippets;
in
{
  programs.nixvim.plugins.nvim-snippets = {
    enable = true;
    settings = {
      create_cmp_source = false;
    };
  };

  home.file.".config/nvim/snippets" = {
    source = snippets;
    recursive = true;
  };
}
