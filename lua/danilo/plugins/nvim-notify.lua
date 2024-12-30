return {
   "rcarriga/nvim-notify", 
    background_color = "NotifyBackground",
    fps=30,
    icons =  {
    DEBUG = "🪲",
    ERROR = "❌",
    INFO =  "🛈",
    TRACE = "🔍",
    WARNN = "⚠️ "
  },
  level = 2,
  minimum_width = 50,
  render = "simple",
  stages =  "slide",
  time_format = {
    notification = "%T",
    notification_history = "%FT%T"
  },  
  timeout = 10000,
  top_down = true
}
