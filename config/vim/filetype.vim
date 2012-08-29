" Mostly just obscure filetypes.

if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  "au! BufRead,BufNewFile *_spec.js.coffee  set filetype=jasmine.coffee syntax=jasmine
  au! BufRead,BufNewFile *.creole setfiletype creole
  au! BufRead,BufNewFile *.irc setfiletype irc
  au! BufRead,BufNewFile *.moin  setfiletype moin
  "au! BufRead,BufNewFile *.html  setfiletype html
  au! BufRead,BufNewFile *.docbook,*.docbk,*.db, setfiletype docbook
  au! BufRead,BufNewFile *.ron,*.ronn  setfiletype markdown
  au! BufRead,BufNewFile *.eo  setfiletype eo
  au! BufRead,BufNewFile *.cljs  setfiletype clojure
  au Bufenter,Bufnewfile *.clj setl complete+=k~/.clj_completions
  " Zsh's syntax file is inferior to sh. Also need to make it think it's
  " more than just sh (bash removes some errors). This actually does no
  " good since system syntax files are read before this.
  au! BufRead,BufNewFile *.zsh  set filetype=sh | let b:is_bash = 1
  "au! BufWrite *.sass         !compass
  au! BufRead,BufNewFile *.tmp  set filetype=text | set textwidth=0
augroup END
