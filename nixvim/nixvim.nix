{
  imports = [
    ./auto-cmd.nix
    ./auto-groups.nix
    ./catppuccin.nix
    ./ccc.nix
    ./cmp.nix
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
    ./treesitter-context.nix
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

            vim.lsp.set_log_level("off")

      local function get_hash()
        -- The get_hash() is utilised to create an independent "store"
        -- By default `fre --add` adds to global history, in order to restrict this to
        -- current directory we can create a hash which will keep history separate.
        -- With this in mind, we can also append git branch to make sorting based on 
        -- Current dir + git branch
        local str = 'echo "dir:' .. vim.fn.getcwd()
        if vim.b.gitsigns_head then
          str = str .. ';git:' .. vim.b.gitsigns_head .. '"'
        end
        vim.print(str)
        local hash = vim.fn.system(str .. " | md5sum | awk '{print $1}'")
        return hash
      end

      local function fzf_mru(opts)
        local fzf = require 'fzf-lua'
        opts = fzf.config.normalize_opts(opts, fzf.config.globals.files)
        local hash = get_hash()
        opts.cmd = 'command cat <(fre --sorted --store_name ' .. hash .. ") <(fd -t f) | awk '!x[$0]++'" -- | the awk command is used to filter out duplicates.
        opts.fzf_opts = vim.tbl_extend('force', opts.fzf_opts, {
          ['--tiebreak'] = 'index' -- make sure that items towards top are from history
        })
        opts.actions = vim.tbl_extend('force', opts.actions or {}, {
          ['ctrl-d'] = {
            -- Ctrl-d to remove from history
            function(sel)
              if #sel < 1 then return end
              vim.fn.system('fre --delete ' .. sel[1] .. ' --store_name ' .. hash)
            end,
            -- This will refresh the list
            fzf.actions.resume,
          },
          -- TODO: Don't know why this didn't work
          -- ["default"] = {
          --   fn = function(selected)
          --     if #selected < 2 then
          --       return
          --     end
          --     print('exec:', selected[2])
          --     vim.cmd('!fre --add ' .. selected[2])
          --     fzf.actions.file_edit_or_qf(selected)
          --   end,
          --   exec_silent = true,
          -- },
        })

        fzf.core.fzf_wrap(opts, opts.cmd, function(selected)
          if not selected or #selected < 2 then return end
          vim.fn.system('fre --add ' .. selected[2] .. ' --store_name ' .. hash)
          fzf.actions.act(opts.actions, selected, opts)
        end)()
      end

      vim.api.nvim_create_user_command('FzfMru', fzf_mru, {})
      vim.keymap.set("n","<C-p>", fzf_mru, {desc="Open Files"})
    '';

    filetype = {
      pattern = {
        # INFO: Match filenames like - ".env.example", ".env.local" and so on
        "%.env%.[%w_.-]+" = "conf";
      };
    };

  };
}
