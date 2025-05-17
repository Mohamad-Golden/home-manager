{
  programs.nixvim.diagnostics = {
    float = {
      source = "always";
    };
    virtual_text = {
      severity = {
        __raw = "{vim.diagnostic.severity.ERROR, vim.diagnostic.severity.WARN}";
      };
    };
    severity_sort = true;
  };
}
