{
  programs.nixvim.autoCmd = [
    # Highlight when yanking (copying) text
    {
      event = [ "TextYankPost" ];
      desc = "Highlight when yanking (copying) text";
      group = "highlight-yank";
      callback.__raw = ''
        function()
          vim.highlight.on_yank()
        end
      '';
    }
    {
      event = [ "BufWinEnter" ];
      callback.__raw = ''
        function()
          vim.fn.matchadd('Conceal', '‌', 10, -1, { conceal = '▯' })
        end
      '';
    }
    {
      event = [ "FileType" ];
      pattern = "json";
      callback.__raw = ''
        function()
          vim.wo.conceallevel = 0
        end
      '';
    }
  ];
}
