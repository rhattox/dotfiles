local M = {}

M.opts = {
  -- Default size of the terminal
  size = 70, -- You can change this to any size (e.g., 20, 30, etc.)

  -- Key mappings to open the terminal in different layouts
  open_mapping = [[<A-i>]], -- Use Ctrl + \ to toggle terminal

  -- Whether or not the terminal should start in insert mode
  start_in_insert = true, -- Automatically start in insert mode in the terminal

  -- Enable persistent size for the terminal window
  persist_size = false,

  -- Direction can be: 'horizontal', 'vertical', or 'float'
  direction = "float", -- This can be changed to 'vertical' or 'float'

}

return M
