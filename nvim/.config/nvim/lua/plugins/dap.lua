return {
  {
    "mfussenegger/nvim-dap",
    cmd = { "Debug", },
  },
  {
    "rcarriga/nvim-dap-ui",
    keys = {},
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require("dapui").setup()
      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    keys = {},
    dependencies = {
      "mwilliamboman/mason.nvim",
    },
    config = function()
      require("mason-nvim-dap").setup()
      require("mason-nvim-dap").setup({
        ensure_installed = { "firefox-debug-adapter" },
        handlers = {},
      })
    end,
  },
}
