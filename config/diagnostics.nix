{
  diagnostic.settings = {
    update_in_insert = true;
    underline = true;
    severity_sort = true;

    # NOTE: Opt-in with 0.11
    virtual_text = {
      severity.min = "warn";
      source = "if_many";
    };

    virtual_lines = {
      current_line = true;
    };

    float = {
      border = "rounded";
    };

    signs = {
      text = {
        "__rawKey__vim.diagnostic.severity.ERROR" = "✘";
        "__rawKey__vim.diagnostic.severity.WARN" = "";
        "__rawKey__vim.diagnostic.severity.HINT" = "⚑";
        "__rawKey__vim.diagnostic.severity.INFO" = "";
      };
      texthl = {
        "__rawKey__vim.diagnostic.severity.ERROR" = "DiagnosticError";
        "__rawKey__vim.diagnostic.severity.WARN" = "DiagnosticWarn";
        "__rawKey__vim.diagnostic.severity.HINT" = "DiagnosticHint";
        "__rawKey__vim.diagnostic.severity.INFO" = "DiagnosticInfo";
      };
    };
  };
}
