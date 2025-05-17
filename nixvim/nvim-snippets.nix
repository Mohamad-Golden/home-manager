let
  snippets = ./snippets;
in
{
  programs.nixvim.plugins.nvim-snippets = {
    enable = true;
  };

  home.file.".config/nvim/snippets" = {
    source = snippets;
    recursive = true;
  };
}
