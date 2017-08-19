" Git formatting and spell check
" This will:
" - Highlight formatting of your commit message (50 characters, no period)
" - Spell check (you need to install aspell)
" - Auto wordwrap your extended message at 72 characters
" source: https://coderwall.com/p/ozr0sw/git-commit-formatting-and-spell-check
autocmd Filetype gitcommit setlocal spell textwidth=72
