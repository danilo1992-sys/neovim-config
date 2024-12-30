return {
  "goolord/alpha-nvim",
    event = "VimEnter",
  enabled = true,
  init = false,
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
    
      ██████╗  ██████╗     ██████╗ ██████╗ ██████╗ ███████╗
      ██╔══██╗██╔════╝    ██╔════╝██╔═══██╗██╔══██╗██╔════╝
      ██║  ██║██║         ██║     ██║   ██║██║  ██║█████╗  
      ██║  ██║██║         ██║     ██║   ██║██║  ██║██╔══╝  
      ██████╔╝╚██████╗    ╚██████╗╚██████╔╝██████╔╝███████╗
      ╚═════╝  ╚═════╝     ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝
  ]]
    dashboard.section.header.val = vim.split(logo, "\n")

      dashboard.section.buttons.val = {
      dashboard.button("e ", "🗀  " .. "Open File Explorer", "<cmd>:Neotree filesystem reveal left<cr>"),
      dashboard.button("l ", "󰒲 " ..  "Lazy", "<cmd>Lazy<cr>"), 
      dashboard.button("m ", "M " ..  "Mason ", "<cmd>Mason<cr>"),
      dashboard.button("g ", "G "  .. "Lazy git", "<cmd>LazyGit<cr>"),
      dashboard.button("d ", "D "  .. "Lazy Docker", "<cmd> <leader>ld <cr>"),
      dashboard.button("q ", " " ..  "Quit", "<cmd> qa <cr>"),
    }    
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcuts"
    end
    dashboard.section.header.opts.hl = "AlphaHeaderLabel"
    dashboard.section.buttons.opts.hl = "AlphaHeaderLabel"
    dashboard.section.footer.opts.hl = "AlphaShortcuts" 
    dashboard.opts.layout[1].val = 8
    return dashboard
    end,
  config = function (_,dashboard)
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "AlphaReady",
        callback = function ()
          require("lazy").show()
        end,
      })
  end  

require("alpha").setup(dashboard. opts)

vim.api.nvim_create_autocmd("User", {
    once = true,
    pattern = "LazyVimStarted",
    callback = function()
      local stats = require("lazy").stats()
      local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
      dashboard.section.footer.val = "⚡ Lazy Vim is loaded "
        ..stats.loaded
        .." / "
        .. "plugin in "
        .. ms 
        .. "ms "
      pcall(vim.cmd.AlphaShortcuts)
  end,
})
end,
}  




