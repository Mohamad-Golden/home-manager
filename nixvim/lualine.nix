{
  programs.nixvim.plugins.lualine = {
    enable = true;
    settings = {
      options = {
        icons_enabled = true;
        theme = "catppuccin";
        component_separators = "|";
        section_separators = "";
        disbale_filetypes = {
          statusline = [ "NvimTree" ];
        };
        ignore_focus = [ "NvimTree" ];
      };
      sections = {
        lualine_a = [ "filename" ];
        lualine_b = [
          "branch"
          "diff"
          "diagnostics"
        ];
        lualine_c = [ "%f" ];
        lualine_x = [
          "encoding"
          "fileformat"
          "filetype"
        ];
        lualine_y = [ "progress" ];
        lualine_z = [ "location" ];
      };
    };
  };
}
