{
  programs.nixvim.plugins.obsidian = {
    enable = true;
    settings = {
      workspaces = [
        {
          name = "default";
          path = "~/obsidian/default";
        }
      ];
      daily_notes = {
        folder = "journal";
        template = "daily.md";
      };
      templates = {
        subdir = "templates";
      };
      ui = {
        enable = false;
      };
      follow_url_func = {
        __raw = ''
          function(url)
            vim.fn.jobstart({"xdg-open", url})
          end
        '';
      };
    };
  };
}
