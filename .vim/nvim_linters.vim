lua << EOF
local lint_ok, lint = pcall(require, "lint")
if not lint_ok then
  return
end

lint.linters_by_ft = {
  python = {'mypy', 'ruff'},
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()

    -- try_lint without arguments runs the linters defined in `linters_by_ft`
    -- for the current filetype
    lint.try_lint()
    end
})

-- vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
--  callback = function()
--    lint.try_lint()
--    if require("utils").is_in_list(vim.fs.basename(vim.api.nvim_buf_get_name(0)), no_lint_files) then
--      vim.diagnostic.disable()
--    end
--  end,
EOF
