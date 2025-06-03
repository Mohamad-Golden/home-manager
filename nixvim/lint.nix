{
  programs.nixvim.plugins.lint = {
    enable = true;

    lintersByFt = {
      # nix = ["nix"];
      javascript = [ "eslint_d" ];
      typescript = [ "eslint_d" ];
      javascriptreact = [ "eslint_d" ];
      typescriptreact = [ "eslint_d" ];
      go = [ "golangcilint" ];
    };

    autoCmd = {
      callback.__raw = ''
              function()
        	require('lint').try_lint()
              end
      '';
      group = "lint";
      event = [
        "BufEnter"
        "BufWritePost"
        "InsertLeave"
      ];
    };
  };
}
