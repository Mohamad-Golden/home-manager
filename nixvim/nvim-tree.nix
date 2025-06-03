{
  programs.nixvim.plugins.nvim-tree = {
    enable = true;
    disableNetrw = true;
    hijackNetrw = true;
    openOnSetup = true;
    respectBufCwd = true;
    selectPrompts = true;
    syncRootWithCwd = true;
    modified = {
      enable = true;
    };
    updateFocusedFile = {
      enable = true;
    };
    diagnostics = {
      enable = true;
      showOnDirs = true;
      showOnOpenDirs = true;
    };
    view = {
      float = {
        enable = false;
      };
      width = {
        max = -1;
      };
    };
    renderer = {
      fullName = false;
      highlightModified = "all";
    };
  };
}
