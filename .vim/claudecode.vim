lua << EOF
local ok, claudecode = pcall(require, "claudecode")
if ok then
  claudecode.setup()
end
EOF

nnoremap <leader>ac <cmd>ClaudeCode<cr>
nnoremap <leader>af <cmd>ClaudeCodeFocus<cr>
nnoremap <leader>ar <cmd>ClaudeCode --resume<cr>
nnoremap <leader>aC <cmd>ClaudeCode --continue<cr>
nnoremap <leader>am <cmd>ClaudeCodeSelectModel<cr>
nnoremap <leader>ab <cmd>ClaudeCodeAdd %<cr>
vnoremap <leader>as <cmd>ClaudeCodeSend<cr>
nnoremap <leader>aa <cmd>ClaudeCodeDiffAccept<cr>
nnoremap <leader>ad <cmd>ClaudeCodeDiffDeny<cr>

augroup claudecode_netrw
  autocmd!
  autocmd FileType netrw nnoremap <buffer> <leader>as <cmd>ClaudeCodeTreeAdd<cr>
augroup END
