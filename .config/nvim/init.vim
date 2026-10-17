set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Open markdown lin under the cursor. It must be defined before sourcing
" ~/.vimrc, which assigns filetypes.
lua << LUA
function _G.open_markdown_link()
  local line = vim.api.nvim_get_current_line()
  local col = vim.api.nvim_win_get_cursor(0)[2] + 1
  local first, chosen
  local init = 1
  while true do
    local s, e, target = line:find('%[[^%]]*%]%(<([^>]*)>%)', init)
    local s2, e2, target2 = line:find('%[[^%]]*%]%(([^)%s<][^)%s]*)%)', init)
    if s2 and (not s or s2 < s) then
      s, e, target = s2, e2, target2
    end
    if not s then break end
    first = first or target
    if col >= s and col <= e then chosen = target break end
    init = e + 1
  end
  local target = chosen or first
  if not target then
    return vim.notify('No link found on this line', vim.log.levels.WARN)
  end
  if not target:match('^%a[%w+.-]*:') then
    target = vim.fs.normalize(vim.fn.expand('%:p:h') .. '/' .. target)
  end
  vim.ui.open(target)
end
LUA

augroup markdown_links
  autocmd!
  autocmd FileType markdown nnoremap <buffer> gx <Cmd>lua open_markdown_link()<CR>
augroup END

source ~/.vimrc
