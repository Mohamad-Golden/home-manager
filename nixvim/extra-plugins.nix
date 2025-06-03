{
  pkgs,
  ...
}:

{
  programs.nixvim.extraPlugins = [
    pkgs.vimPlugins.vim-suda
    pkgs.vimPlugins.focus-nvim
    (pkgs.vimUtils.buildVimPlugin {
      name = "typecheck";
      src = pkgs.fetchFromGitHub {
        owner = "jellydn";
        repo = "typecheck.nvim";
        rev = "5a0b0f50be009e85c337f3e183fa6cd28a3c95a0";
        hash = "sha256-kbTvrKIQty+lFx6rscc8bDCguRtwdjschpxE+EKGg38=";
      };
    })
    pkgs.vimPlugins.go-nvim
    (pkgs.vimUtils.buildVimPlugin {
      name = "go-playground";
      src = pkgs.fetchFromGitHub {
        owner = "cappyzawa";
        repo = "go-playground.nvim";
        rev = "v0.2.1";
        hash = "sha256-Kh5dp4PUIoP7/bqczi9awXhseL8kEjIlwyhmqILqtfg=";
      };
    })
  ];
}
