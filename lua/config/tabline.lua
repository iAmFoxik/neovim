local M = {}

M.config = {
  sep = {
    enabled = true,
    start = "",
    finish = "",
  },

  number = {
    enabled = true,
  },
  modified = {
    enabled = true,
    text = "✱",
  },

  label = {
    no_name = "[No Name]",
  },

  layout = {
    " ",
    "number",
    " ",
    "label",
    "modified",
    " ",
  },

  hl = {
    active = "RabLine",
    inactive = "RabLineInactive",
    modified_active = "RabLineModified",
    modified_inactive = "RabLineModifiedInactive",
  },
}

local function tab_buf_name(tabpage)
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

local function number_to_icon(n)
  return digits[n] or tostring(n)
end

local function setup_highlights()
  local ok_palette, palette_mod = pcall(require, "github-theme.palette")
  local ok_spec, spec_mod = pcall(require, "github-theme.spec")

  if not (ok_palette and ok_spec) then
    return
  end

  local theme = vim.g.colors_name

  if type(theme) ~= "string" or theme == "" then
    return
  end

  local palette = palette_mod.load(theme)
  local spec = spec_mod.load(theme)

  local hl = vim.api.nvim_get_hl(0, { name = "TabLineFill", link = false })

  vim.api.nvim_set_hl(0, "RabLine", {
    fg = hl.bg,
    bg = palette.accent.fg,
  })

  vim.api.nvim_set_hl(0, "RabLineInactive", {
    fg = hl.bg,
    bg = palette.scale.blue[2],
  })

  vim.api.nvim_set_hl(0, "RabLineModified", {
    fg = palette.scale.orange[4],
    bg = palette.accent.fg,
  })

  vim.api.nvim_set_hl(0, "RabLineModifiedInactive", {
    fg = palette.scale.orange[4],
    bg = palette.scale.blue[2],
  })
end

local function build_segments(ctx, cfg)
  local segs = {}
  local hl = {}

  if ctx.current then
    hl.text = cfg.hl.active
    hl.mod = cfg.hl.modified_active
  else
    hl.text = cfg.hl.inactive
    hl.mod = cfg.hl.modified_inactive
  end

  table.insert(segs, "%#" .. hl.text .. "#")

  if cfg.sep.enabled then
    table.insert(segs, cfg.sep.start)
  end

  for _, item in ipairs(cfg.layout) do
    if type(item) == "string" then
      if item == "number" then
        if cfg.number.enabled then
          table.insert(segs, number_to_icon(ctx.index))
        end
      elseif item == "label" then
        table.insert(segs, tab_buf_name(ctx.index))
      elseif item == "modified" then
        if
          cfg.modified.enabled
          and ctx.modified
          and tab_buf_name(ctx.index) ~= cfg.label.no_name
        then
          table.insert(segs, "%#" .. hl.mod .. "#")
          table.insert(segs, cfg.modified.text)
          table.insert(segs, "%#" .. hl.text .. "#")
        end
      else
        table.insert(segs, item)
      end
    end
  end

  if cfg.sep.enabled then
    table.insert(segs, cfg.sep.finish)
  end

  return table.concat(segs)
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = setup_highlights,
})
vim.schedule(setup_highlights)

function M.render()
  local cfg = M.config
  local tabs = vim.api.nvim_list_tabpages()
  local current = vim.api.nvim_get_current_tabpage()

  local out = {}

  local s = ""

  for idx, tab in ipairs(tabs) do
    local ctx = {
      index = idx,
      current = (tab == current),
      modified = tab_has_modified_buffers(tab),
    }

    s = build_segments(ctx, cfg)
  end

  s = s .. "%#TabLineFill#%="

  return s
end

return M
