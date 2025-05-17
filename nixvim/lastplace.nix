{
  programs.nixvim.plugins.lastplace = {
    enable = true;
    settings.lastplace_ignore_buftype = [
      "quickfix"
      "nofix"
      "help"
    ];
  };
}
