return {
  "folke/todo-comments.nvim",
  event ={"BufReadPre","BufNewFile"},
  config = function()
    local todo_comments = require("todo-comments")
    
    local keymap = vim.keymap

    keymap.set("n", "<A-n>", function()
      todo_comments.jump_next()
    end, {desc = "Next todo comment"})    

    keymap.set("n", "<A-p>", function()
      todo_comments.jump_prev()
    end, {desc = "Prev todo comment"})

    todo_comments.setup()
  end,
}


