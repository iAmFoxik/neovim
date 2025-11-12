return {
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
        buildScripts = { enable = true },
      },
      checkOnSave = {
        enable = true,
        command = "clippy",
      },
      inlayHints = {
        typeHints = { enable = true },
        parameterHints = { enable = true },
        chainingHints = { enable = true },
        closeBraceHints = { enable = true },
        -- implicitDrops = { enable = true }, -- показывать drop

      },
      -- hover = {
      --   action = { enable = true },
      -- },
      -- lens = {
      --   enable = true,
      --   run = { enable = true },
      -- },
      files = {
        excludeDirs = { "target" },
      },
      procMacro = {
        enable = true,
      },
    }
  }
}
