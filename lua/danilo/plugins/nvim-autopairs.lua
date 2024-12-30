return{ 
  "windwp/nvim-autopairs",  
  event = {"InsertEnter"},
  depndencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()

  local autopairs = require("nvim-autopairs")
    
    autopairs.setup({
      cheack_ts = true,
      ts_config = {
        lua = {"string"},
        javascript = {"telesco_string"},
        java = false,
      },
    })

    local cmp_autopair = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopair.on_confirm_done())
  end,
}
