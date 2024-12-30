return{
  "stevearc/conform.nvim",
  event = {"BufReadPre", "BufNewFile"},
  config = function ()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft={
        javascript = {"prettier"},
        typescript = {"prettier"},
        javascriptreact = {"prettier"},
        typescriptreact = {"prettier"},
        css = {"prettier"},
        html = {"prettier"},
        yaml = {"prettier"},
        python = {"isort","black"},
        lua = {"stylua"},
        astro = {"prettier"},
        json = {"prettier"},
        prisma = {"prettier"},
        tailwind = {"prettier"},
      }
    })
  end
}
