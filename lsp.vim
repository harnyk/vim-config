" --- LSP UX ---
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_signs_enabled = 1
let g:lsp_diagnostics_virtual_text_enabled = 0 " too noisy in Vim

" --- Keymaps ---
nnoremap <silent> gd :LspDefinition<CR>
nnoremap <silent> gD :LspDeclaration<CR>
nnoremap <silent> gr :LspReferences<CR>
nnoremap <silent> gi :LspImplementation<CR>
nnoremap <silent> K  :LspHover<CR>
nnoremap <silent> <leader>rn :LspRename<CR>
nnoremap <silent> <leader>ca :LspCodeAction<CR>
nnoremap <silent> [d :LspPreviousDiagnostic<CR>
nnoremap <silent> ]d :LspNextDiagnostic<CR>

" --- Format on save (toggle to taste) ---
augroup LspFormatOnSave
  autocmd!
  autocmd BufWritePre *.go,*.ts,*.tsx,*.js,*.jsx LspDocumentFormatSync
augroup END
