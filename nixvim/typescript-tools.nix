{
  programs.nixvim.plugins.typescript-tools = {
    enable = true;
    settings = {
      settings = {
        jsx_close_tag = {
          enable = false;
          filetypes = [
            "javascriptreact"
            "typescriptreact"
          ];
        };
        expose_as_code_action = [ "add_missing_imports" ];
      };
    };
  };
}
