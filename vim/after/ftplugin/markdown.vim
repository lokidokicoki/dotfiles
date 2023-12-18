" configure ALE linters and fixers
let b:ale_linters = {'markdown': ['remark-lint', 'write-good']}
let b:ale_fixers = {'markdown': ['remark-lint', 'prettier']}
setlocal linebreak        " Wrap long lines at word boundaries
setlocal formatoptions-=t " Dont auto-wrap text using textwidth
" setlocal columns=80       " Constrain window width to trigger soft wrap
let b:ale_markdown_remark_lint_options = '-r ~/.remarkrc.json'

setlocal spell spelllang=en_gb
