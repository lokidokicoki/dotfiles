" Python specific settings
setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix
setlocal textwidth=120

let python_highlight_all = 1

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red


" flag trailing whitespace as bad
"au BufRead,BufNewFile *.py, *.pyw, *.c, *.h match BadWhiteSpace /\s\+$/

" configure ALE linters and fixers
let b:ale_linters = {'python': ['flake8', 'mypy', 'pylint']}
let b:ale_fixers = {'python': ['isort', 'black']}
"let b:pymode_lint_options_pep8 = {
"        \ 'max_line_length': 120,
"        \ 'ignore': 'W191'
"    \ }
let g:pymode_lint_ignore = "W191"
