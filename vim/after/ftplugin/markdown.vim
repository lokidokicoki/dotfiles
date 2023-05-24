" configre ALE linters and fixers
let b:ale_linters = {'markdown': ['remark-lint', 'write-good']}
let b:ale_fixers = {'markdown': ['remark-lint', 'prettier']}
setlocal linebreak
setlocal formatoptions-=t
let b:ale_markdown_remark_lint_options = '-r ~/.remarkrc.json'

setlocal spell spelllang=en_gb
