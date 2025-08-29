-- local logo = [[
--         _..---...,""-._     ,/}/)
--      .''        ,      ``..'(/-<
--     /   _      {      )         \
--    ;   _ `.     `.   <         a(
--  ,'   ( \  )      `.  \ __.._ .: y
-- (  <\_-) )'-.____...\  `._   //-'
--  `. `-' /-._)))      `-._)))
--    `...'
-- ]]

local logo = [[
                        ▁    
             ▃▃ ▃▃▃▃▃▃▁▃     
        ▃▃ ▃  ▂▂▂▂     ▃     
      ▃  ▃       ▂▂          
▃▃▃▃▃▃            ▂▂▂        
    ▃▃             ▁▁▁       
      ▃▃             ▁▁▁     
         ▃▃▃▃     ▂    ▁    ▁
            ▃▃▃▂ ▃   ▂ ▂  ▁  
              ▃▃▃ ▂▂▂   ▁
]]

return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.picker.files()" },
            -- { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            -- { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.picker.recent()" },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.picker.files({cwd = vim.fn.stdpath('config')})",
            },
            -- { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
          header = logo,
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
        },
      },
    },
  },
}
