{
  programs.nixvim.plugins.fastaction = {
    enable = true;
    settings = {
      register_ui_select = true;
      popup = {
        hide_cursor = false;
        relative = "cursor";
        title = "";
      };
    };
  };
}
