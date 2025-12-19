local M = {}

local function tab_level(tabpage)
  local win = vim.api.nvim_tabpage_get_win(tabpage)
  local buf = vim.api.nvim_win_get_buf(win)
  local name = vim.api.nvim_buf_get_name(buf)

  if name == "" then
    return "[No Name]"
  end

  return vim.fn.fnamemodify(name, ":t")
end

local function tab_has_modified_buffers(tabpage)
  for _, win in ipairs(vim.api.nvim_tabpage_list_wins(tabpage)) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].modified then
      return true
    end
  end
  return false
end

local digits = {
  [0] = "󰎡",
  [1] = "󰎤",
  [2] = "󰎧",
  [3] = "󰎪",
  [4] = "󰎭",
  [5] = "󰎱",
  [6] = "󰎳",
  [7] = "󰎶",
  [8] = "󰎹",
  [9] = "󰎼",
}

local function digit_icon(n)
  return digits[n] or tostring(n)
end

local theme = vim.g.colors_name
local palette = require("github-theme.palette").load(theme)
local spec = require("github-theme.spec").load(theme)
print(vim.inspect(palette.scale))

vim.api.nvim_set_hl(0, "RabLine", {
  fg = spec.bg2,
  bg = palette.accent.fg,
})

vim.api.nvim_set_hl(0, "RabLineRev", {
  fg = palette.accent.fg,
  bg = spec.bg2,
})

vim.api.nvim_set_hl(0, "RabLineInactive", {
  fg = spec.bg0,
  bg = palette.scale.blue[2],
})

vim.api.nvim_set_hl(0, "RabLineInactiveRev", {
  bg = spec.bg0,
  fg = palette.scale.blue[2],
})

vim.api.nvim_set_hl(0, "RabLineEndSep", {
  fg = palette.accent.fg,
  bg = spec.bg2,
})

vim.api.nvim_set_hl(0, "RabLineEndSepRev", {
  fg = palette.scale.blue[2],
  bg = spec.bg2,
})

function M.render()
  local s = ""
  local tabs = vim.api.nvim_list_tabpages()
  local current = vim.api.nvim_get_current_tabpage()

  for idx, tab in ipairs(tabs) do
    local is_current = (tab == current)

    local modified = tab_has_modified_buffers(tab)
    local mod_mark = modified and " *" or ""

    local sep = ""
    local end_sep = (is_current and "%#RabLineEndSep#" or "%#RabLineEndSepRev#")
      .. sep

    s = s .. (is_current and "%#RabLine#" or "%#RabLineInactive#")
    s = s .. sep

    local label =
      string.format(" %s %s%s ", digit_icon(idx), tab_level(tab), mod_mark)

    s = s .. "%" .. idx .. "T" .. label .. end_sep .. "%T"
  end

  s = s .. "%#TabLineFill#%="

  return s
end

return M
