" Python specific settings
setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal noexpandtab
setlocal autoindent
setlocal fileformat=unix
setlocal textwidth=120

let python_higlight_all = 1

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red


" flag trailing whitespace as bad
au BufRead,BufNewFile *.py, *.pyw, *.c, *.h match BadWhiteSpace /\s\+$/

" configure ALE linters and fixers
let g:ale_linters = {'python': ['flake8', 'mypy', 'pylint']}
let g:ale_fixers = {'python': ['isort', 'black']}
let b:ale_fix_on_save = 1
