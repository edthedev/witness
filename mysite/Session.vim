let SessionLoad = 1
if &cp | set nocp | endif
vmap  "+y 
nmap  "+gP
map ,ob :!ranger .
map ,u :call HandleURL()
map ,mr :!minion --filename %:q
map ,mn :!minion --new-note
map ,mh :!minion --help$
map ,ma :!minion --action=archive --filename=%:q
map ,te :!ebook-convert %:r.html %:r.epub
map ,tg :!make-graph %:r
vmap ,tf !new_file --filename=
map ,ow :!ranger ~/Dropbox/notes/wiki
map ,ou :r!adddatetime
map ,ot :%!gather_tags 
map ,op :!text-task-progress %
map ,ol :!text-list-todos %
map ,od :.!text-task-toggle$ 
map ,ts :r!scratch
map ,or :!minion --filename %:q
map ,vh :!chromium-browser %:r.html&
map ,th :!$HOME/bin/multimarkdown % > %:r.html
map ,km :!$HOME/bin/KindleGen/kindlegen "%:r.html" -o "%:r.mobi"
map ,kp :!markdown2pdf %
map ,hl :!list-headers %
map ,h3 :.!$HOME/dotfiles/scripts/text-make-header -l 3 -t vim2j
map ,h2 :.!$HOME/dotfiles/scripts/text-make-header -l 2 -t vim2j
map ,h1 :.!$HOME/dotfiles/scripts/text-make-header -l 1 -t vim2j
map ,tw :!$HOME/dotfiles/scripts/text-send-to-wordpress %
map ,lb :buffers
map ,lh :e $HOME/Dropbox/notes
map ,lw :e $HOME/Dropbox/notes
map ,ll :e <cfile>
map ,ss :'<,'> !sort
map ,pr :!python % 
map ,d :.!text-task-toggle$ 
map ,f :!grep  . -R -A1 -B1 -n | grep -v .svn 
map ,pn :set nu!
map ,pl :!pylint % > /tmp/out.txt:e /tmp/out.txt
map ,pm :!listmethods %
map ,ph :!check-script --html %
map ,pe :!tail /var/log/apache2/error.log
map ,pd :!pydoc %:r
map ,pc :!hg ci%
map ,b :buffers
nnoremap ; :
vnoremap < <gv
vnoremap > >gv
nmap H ^  
nmap L $ 
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
vnoremap j gj
nnoremap j gj
vnoremap k gk
nnoremap k gk
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <F10> :!%
map <F9> :!firefox %:r.html &
map <F8> :!rst2slides % %:r.html
map <F7> :badd %:r-scratch.%:e
map <F6> :!python $HOME/projects/rst2confluence/rst2confluence.py % > %r.wiki:badd %r.wiki
map <F5> :!python %:r.py
map <F4> :!make install
map <F3> :!git commit -a
map <F2> :e %:r.pylint | :read !pylint %:r.py
imap  i
inoremap ii 
cnoreabbr W w
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set backupdir=./.backup,/tmp
set clipboard=unnamed
set directory=./.backup,/tmp
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Monospace\ 12
set helplang=en
set hidden
set ignorecase
set incsearch
set omnifunc=pythoncomplete#Complete
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set scrolloff=8
set shiftwidth=4
set showmatch
set sidescroll=1
set sidescrolloff=15
set smartindent
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set titlestring=megatron[vim(forms.py)]
set visualbell
set wildignore=*.pyc
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/witness/mysite
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +7 witness/models.py
badd +17 witness/views.py
badd +4 mysite/urls.py
args witness/forms.py
edit mysite/urls.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=20
setlocal foldlevel=20
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pythoncomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
4
normal zo
12
normal zo
let s:l = 4 - ((3 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
