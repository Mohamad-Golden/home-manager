{
  programs.nixvim.plugins.blink-cmp = {
    enable = true;

    settings = {
      keymap = {
        preset = "enter";
        "<C-k>" = [
          "select_prev"
          "fallback"
        ];
        "<C-j>" = [
          "select_next"
          "fallback"
        ];
        "<Tab>" = [
          "accept"
          "fallback"
        ];
      };
      signature = {
        enabled = false;
      };
      completion = {
        documentation = {
          auto_show = true;
        };
      };
    };
  };
}
