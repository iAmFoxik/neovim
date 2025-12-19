vim.api.nvim_set_hl(0, "TabLineActive", {
  bg = "#59A8FF",
  bold = true,
  cterm = {
    bold = true,
  },
  fg = "#F6F8FA",
})

vim.api.nvim_set_hl(0, "TabLineInactive", {
  bg = "#FFFFFF",
  fg = "#1F2328",
})

-- MiniTablineVisible = {
--   bg = "#90C5FF",
--   fg = "#F6F8FA",
-- }

function _G.Tabline()
  local s = ""

  local tabs = vim.api.nvim_list_tabpages()
  local current = vim.api.nvim_get_current_tabpage()

  for i, tabs in ipairs(tabs) do
    local is_active = (tabs == current)

    local hl = is_active and "%#TabLineActive#" or "%#TabLineInactive#"

    local wins = vim.api.nvim_tabpage_list_wins(tab)
    local buf = vim.api.nvim_win_get_buf(wins)
    local bufname = vim.api.nvim_buf_get_name(buf)
    local name = vim.fn.fnamemodify(bufname, ":t")

    if name == "" then
      name = "[No Name]"
    end

    s = s .. hl .. i .. " " .. name .. "%#TabLine#"
  end

  return s
end

vim.o.tabline = "%!v:lua.Tabline()"
