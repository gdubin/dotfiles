" Indentation is good.
:set tabstop=2
:set expandtab
:set shiftwidth=2
:set autoindent
:set smartindent

filetype indent on

" So are line numbers.
:set number

map <C-n> :NERDTreeToggle<CR>

" This makes things faster to search with Ctrl-P.
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']

let g:vimrubocop_config = '~/.rubocop.yml'

" Easier to clear searches.
command C let @/=""

" Pretty code makes me happy.
let g:ale_linters = {
      \ 'css': ['scsslint'],
      \ 'erb': ['erubi'],
      \ 'html': ['tidy', 'htmlhint', 'write-good', 'alex'],
      \ 'javascript': ['eslint'],
      \ 'jsx': ['stylelint', 'eslint'],
      \ 'ruby': ['ruby', 'rubocop', 'rails_best_practices', 'brakeman'],
      \ 'scss': ['scsslint'],
      \ 'text': ['vale', 'write-good', 'alex'],
      \ 'vim': ['vint']
      \ }

let g:ale_fixers = {
      \ 'css': ['stylelint'],
      \ 'html': ['prettier'],
      \ 'javascript': ['prettier-eslint'],
      \ 'json': ['prettier'],
      \ 'ruby': ['rubocop'],
      \ 'scss': ['stylelint']
      \ }

" Do not lint or fix minified files.
let g:ale_pattern_options = {
      \ '\.min\.css$': {'ale_enabled': 0},
      \ '\.min\.js$': {'ale_enabled': 0},
      \}

let g:ale_virtualtext_cursor = 1
let g:ale_set_quickfix = 0
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] %s'

nnoremap <Leader>f :ALEFix<CR>

