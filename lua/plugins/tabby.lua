return {
  "nanozuki/tabby.nvim",
  config = function()
    local api = require("tabby.module.api")
    local theme = {
      fill = "TabLineFill",
      current_tab = "Tabline",
      tab = "NonText",
      line_sep = "Cursor",
    }
    local function is_win_modified(win_id)
      if api.is_float_win(win_id) then
        return false
      end
      local bufid = vim.api.nvim_win_get_buf(win_id)
      if vim.bo[bufid].modified then
        return true
      end
      return false
    end

    local function is_tab_current_win_modified(tab)
      -- indicate if any of buffers in tab have unsaved changes
      --local win_ids = api.get_tab_wins(tab.id)
      local win_id = api.get_tab_current_win(tab.id)
      return is_win_modified(win_id)
    end

    require("tabby").setup({
      line = function(line)
        return {
          line.tabs().foreach(function(tab)
            local wins = api.get_tab_wins(tab.id)
            local modified = is_tab_current_win_modified(tab)
            local hl = tab.is_current() and theme.current_tab or theme.tab

            local left_sep

            if tab.is_current() then
              left_sep = line.sep("▎", theme.line_sep, theme.current_tab)
            else
              left_sep = line.sep("▎", theme.fill, theme.fill)
            end

            return {
              left_sep,
              tab.number(),
              tab.name(),
              modified and " *",
              margin = " ",
              hl = hl,
            }
          end),
          hl = theme.fill,
        }
      end,
    })
  end,
}
