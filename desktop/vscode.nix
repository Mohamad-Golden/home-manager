{ pkgs, ... }:

{
  programs.vscode = {
    enable = false;
    # extensions = with pkgs.vscode-extensions; [
    #   vscodevim.vim
    #   formulahendry.auto-rename-tag
    #   ms-python.python
    #   ms-python.black-formatter
    #   ms-python.debugpy
    #   ms-python.isort
    #   ms-python.vscode-pylance
    #   charliermarsh.ruff
    #   dracula-theme.theme-dracula
    #   streetsidesoftware.code-spell-checker
    #   adpyke.codesnap
    #   dbaeumer.vscode-eslint
    #   eamodio.gitlens
    #   kisstkondoros.vscode-gutter-preview
    #   PKief.material-icon-theme
    #   streetsidesoftware.code-spell-checker-persian
    #   esbenp.prettier-vscode
    #   bradlc.vscode-tailwindcss
    #   meganrogge.template-string-converter
    #   Gruntfuggly.todo-tree
    # ];

    userSettings = {
      "workbench.iconTheme" = "material-icon-theme";
      "workbench.startupEditor" = "none";
      "explorer.confirmDragAndDrop" = false;
      "editor.fontSize" = 16;
      "explorer.confirmDelete" = false;
      "files.autoSave" = "afterDelay";
      "editor.fontLigatures" = false;
      "terminal.integrated.enableMultiLinePasteWarning" = false;

      "[python]" = {
        "editor.defaultFormatter" = "ms-python.black-formatter";
        "editor.codeActionsOnSave" = {
          "source.organizeImports.ruff" = "explicit";
        };
      };

      "editor.renderWhitespace" = "none";
      "files.exclude" = {
        "**/__pycache__" = true;
      };
      "window.titleBarStyle" = "custom";
      "vscode_vibrancy.opacity" = 0;
      "vscode_vibrancy.refreshInterval" = 100;
      "vscode_vibrancy.type" = "menu";

      "vim.easymotion" = true;

      "vim.visualModeKeyBindingsNonRecursive" = [
        {
          "before" = [ "d" ];
          "after" = [
            "\""
            "_"
            "d"
          ];
        }
        {
          "before" = [ "<C-j>" ];
          "commands" = [ "editor.action.moveLinesDownAction" ];
        }
        {
          "before" = [ "<C-k>" ];
          "commands" = [ "editor.action.moveLinesUpAction" ];
        }
      ];

      "vim.normalModeKeyBindingsNonRecursive" = [
        {
          "before" = [
            "g"
            "D"
          ];
          "commands" = [ "editor.action.revealDefinitionAside" ];
        }
        {
          "before" = [
            "y"
            "d"
          ];
          "after" = [ "d" ];
        }
        {
          "before" = [ "x" ];
          "after" = [
            "\""
            "_"
            "x"
          ];
        }
        {
          "before" = [ "d" ];
          "after" = [
            "\""
            "_"
            "d"
          ];
        }
        {
          "before" = [
            "y"
            "D"
          ];
          "after" = [ "D" ];
        }
        {
          "before" = [ "D" ];
          "after" = [
            "\""
            "_"
            "D"
          ];
        }
        {
          "before" = [
            "d"
            "d"
          ];
          "after" = [
            "\""
            "_"
            "d"
            "d"
          ];
        }
        {
          "before" = [ "f" ];
          "after" = [
            "leader"
            "leader"
            "s"
          ];
        }
        {
          "before" = [ "enter" ];
          "commands" = [ "workbench.view.explorer" ];
        }
        {
          "before" = [ "s" ];
          "commands" = [ "workbench.action.files.save" ];
        }
        {
          "before" = [ "q" ];
          "commands" = [ "workbench.action.closeActiveEditor" ];
        }
        {
          "before" = [ "<C-J>" ];
          "commands" = [ "editor.action.moveLinesDownAction" ];
        }
        {
          "before" = [ "<C-k>" ];
          "commands" = [ "editor.action.moveLinesUpAction" ];
        }
      ];

      "vim.useSystemClipboard" = true;

      "vim.insertModeKeyBindings" = [
        {
          "before" = [
            "j"
            "j"
          ];
          "after" = [ "<esc>" ];
        }
      ];

      "[html]" = {
        "editor.defaultFormatter" = "vscode.html-language-features";
        "editor.tabSize" = 2;
      };

      "editor.formatOnSave" = true;
      "workbench.editor.showTabs" = "single";
      "gitlens.codeLens.authors.enabled" = false;
      "gitlens.codeLens.recentChange.enabled" = false;

      "[jsonc]" = {
        "editor.defaultFormatter" = "vscode.json-language-features";
      };

      "ruff.lint.args" = [ "--ignore=E501" ];

      "[javascript]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
        "editor.tabSize" = 2;
      };

      "emmet.includeLanguages" = {
        "javascript" = "javascriptreact";
      };

      "eslint.format.enable" = true;

      "[javascriptreact]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
        "editor.tabSize" = 2;
      };

      "[typescriptreact]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };

      "[typescript]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
        "editor.tabSize" = 2;
      };

      "python.analysis.autoImportCompletions" = true;
      "diffEditor.ignoreTrimWhitespace" = false;
      "editor.minimap.enabled" = false;
      "githubPullRequests.pullBranch" = "never";
      "vim.foldfix" = true;
      "workbench.colorTheme" = "Predawn";
      "window.commandCenter" = false;

      "[json]" = {
        "editor.defaultFormatter" = "vscode.json-language-features";
      };

      "githubPullRequests.fileListLayout" = "tree";
      "githubPullRequests.createOnPublishBranch" = "never";
      "editor.stickyScroll.enabled" = true;
    };

    keybindings = [
      {
        key = "ctrl+j";
        command = "selectNextSuggestion";
        when = "suggestWidgetVisible";
      }
      {
        key = "ctrl+k";
        command = "selectPrevSuggestion";
        when = "suggestWidgetVisible";
      }
      {
        key = "ctrl+n";
        command = "explorer.newFile";
      }
      {
        key = "ctrl+j";
        command = "workbench.action.quickOpenSelectNext";
        when = "inQuickOpen";
      }
      {
        key = "ctrl+s";
        command = "git.checkout";
      }
      {
        key = "ctrl+k";
        command = "workbench.action.quickOpenSelectPrevious";
        when = "inQuickOpen";
      }
      {
        key = "ctrl+i";
        command = "workbench.action.openRecent";
        when = "activeEditorGroupEmpty";
      }
      {
        key = "alt+m";
        command = "editor.debug.action.toggleBreakpoint";
      }
      {
        key = "alt+i";
        command = "workbench.action.debug.stepInto";
      }
      {
        key = "alt+l";
        command = "editor.debug.action.runToCursor";
      }
      {
        key = "alt+c";
        command = "workbench.action.debug.continue";
      }
      {
        key = "alt+n";
        command = "workbench.action.debug.stepOver";
      }
      {
        key = "alt+o";
        command = "workbench.action.debug.stepOut";
      }
      {
        key = "ctrl+shift+e";
        command = "workbench.files.action.focusFilesExplorer";
      }
      {
        key = "ctrl+shift+f";
        command = "workbench.view.search";
      }
      {
        key = "ctrl+shift+g";
        command = "workbench.view.scm";
      }

      {
        key = "ctrl+h";
        command = "workbench.action.focusLeftGroup";
        when = "editorTextFocus && vim.active && vim.mode != 'Insert'";
      }
      {
        key = "ctrl+h";
        command = "workbench.action.focusSideBar";
        when = "activeEditorGroupEmpty";
      }
      {
        key = "ctrl+h";
        command = "workbench.action.focusSideBar";
        when = "editorTextFocus && vim.active && vim.mode != 'Insert' && activeEditorGroupIndex == 1";
      }
      {
        key = "ctrl+h";
        command = "workbench.action.focusSideBar";
        when = "sideBarFocus";
      }

      {
        key = "ctrl+l";
        command = "workbench.action.focusActiveEditorGroup";
        when = "sideBarFocus";
      }
      {
        key = "ctrl+l";
        command = "workbench.action.focusRightGroup";
        when = "editorTextFocus && vim.active && vim.mode != 'Insert'";
      }

      {
        key = "alt+q";
        command = "workbench.action.closeEditorsInOtherGroups";
      }
      {
        key = "ctrl+;";
        command = "workbench.files.action.collapseExplorerFolders";
      }
      {
        key = "ctrl+m";
        command = "explorer.newFolder";
      }
      {
        key = "ctrl+o";
        command = "workbench.action.files.openFolder";
        when = "openFolderWorkspaceSupport && activeEditorGroupEmpty";
      }
      {
        key = "ctrl+k ctrl+o";
        command = "-workbench.action.files.openFolder";
        when = "openFolderWorkspaceSupport";
      }
      {
        key = "ctrl+o";
        command = "-workbench.action.files.openFile";
        when = "true";
      }

      {
        key = "ctrl+j";
        command = "workbench.action.terminal.focusNext";
        when = "terminalFocus";
      }
      {
        key = "ctrl+k";
        command = "workbench.action.terminal.focusPrevious";
        when = "terminalFocus";
      }
      {
        key = "ctrl+n";
        command = "workbench.action.terminal.new";
        when = "terminalFocus";
      }
    ];
  };
}
