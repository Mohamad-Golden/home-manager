{
  programs.nixvim.plugins.dap-view = {
    enable = true;
    luaConfig.post = ''
      local dap, dv = require("dap"), require("dap-view")
      dap.listeners.before.attach["dap-view-config"] = function()
          dv.open()
      end
      dap.listeners.before.launch["dap-view-config"] = function()
          dv.open()
      end
      dap.listeners.before.event_terminated["dap-view-config"] = function()
          dv.close()
      end
      dap.listeners.before.event_exited["dap-view-config"] = function()
          dv.close()
      end
    '';
  };
}
