{
  programs.nixvim.opts = {
    conceallevel = 2;
    concealcursor = "n";
    number = true;
    relativenumber = false;
    mouse = "a";
    showmode = false;
    clipboard = "unnamedplus";
    # clipboard = {
    #   providers = {
    #     wl-copy.enable = true;
    #     xsel.enable = true;
    #   };
    #   register = "unnamedplus";
    # };
    breakindent = true;
    hlsearch = true;
    undofile = true;
    ignorecase = true;
    smartcase = true;
    signcolumn = "yes";
    updatetime = 250;
    timeoutlen = 300;
    completeopt = "menu,noinsert";
    termguicolors = true;
    termbidi = true;
    shiftwidth = 2;
    autoindent = true;
    smartindent = true;
    foldmethod = "expr";
    foldexpr = "v:lua.vim.treesitter.foldexpr()";
    foldcolumn = "1";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
    fillchars.__raw = "[[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]";
    #list = true;
    # listchars.__raw = "{ tab = '» ', trail = '·', nbsp = '␣' }";
    scrolloff = 10;
    wrap = false;
    cursorline = true;
    splitright = true;
    splitbelow = true;
    syntax = "off";
    spell = false;
  };
}
