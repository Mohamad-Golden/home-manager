{
  imports = [
    ./auto-cmd.nix
    ./auto-groups.nix
    ./blink-cmp.nix
    ./catppuccin.nix
    ./ccc.nix
    ./cmp-nvim-lsp-signature-help.nix
    ./cmp.nix
    ./colorizer.nix
    ./comment.nix
    ./conform.nix
    ./diagnostics.nix
    ./diffview.nix
    ./extra-plugins.nix
    ./fastaction.nix
    ./fidget.nix
    ./friendly-snippets.nix
    ./fzf-lua.nix
    ./gitsigns.nix
    ./globals.nix
    ./goyo.nix
    ./helpview.nix
    ./hop.nix
    ./illuminate.nix
    ./image.nix
    ./indent-blankline.nix
    ./keymaps.nix
    ./lastplace.nix
    ./lint.nix
    ./lsp.nix
    ./lspkind.nix
    ./lualine.nix
    ./luasnip.nix
    ./markdown-preview.nix
    ./matchup.nix
    ./neoclip.nix
    ./neoscroll.nix
    ./nvim-autopairs.nix
    ./nvim-snippets.nix
    ./nvim-tree.nix
    ./obsidian.nix
    ./opts.nix
    ./render-markdown.nix
    ./sleuth.nix
    ./surround.nix
    ./telescope.nix
    ./todo-comments.nix
    ./treesitter.nix
    ./trouble.nix
    ./ts-autotag.nix
    ./ts-context-commentstring.nix
    ./typescript-tools.nix
    ./vim-dadbod-completion.nix
    ./vim-dadbod-ui.nix
    ./vim-dadbod.nix
    ./web-devicons.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    extraConfigLua = ''
      vim.api.nvim_create_user_command("Formatc", function(args)
        local range = nil
        if args.count ~= -1 then
          local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
          range = {
            start = { args.line1, 0 },
            ["end"] = { args.line2, end_line:len() },
          }
        end
        require("conform").format({ async = true, lsp_format = "fallback", range = range })
      end, { range = true })

      vim.ui.select = require('fastaction').select

      require('focus').setup({
        enable = false,
        autoresize = {
          width = 120
        }
      })

      require('typecheck').setup({
        debug = true,
        mode = "trouble"
      })

      require('go').setup({
        lsp_cfg = true,
      })

      vim.lsp.set_log_level("off")
    '';

    filetype = {
      pattern = {
        # INFO: Match filenames like - ".env.example", ".env.local" and so on
        "%.env%.[%w_.-]+" = "conf";
      };
    };

  };
}
