"***************************************
" 熱鍵紀錄 
"  <L>              : Leader Key = ','
"  --------------預設熱鍵---------------
"  D                : 刪除游標後（等於 d$）
"  r/R              : 取代一字/取代到按 Esc
"  ~                : 轉換大小寫
"  J                : 兩行合併
"  "ayy             : 複製到 a reg 
"  "ap              : 貼上   a reg 
"  :reg             : 看 reg 
"  */#（ g*/g# ）   : 搜尋游標所在單字 （部分符合）
"  m（a-z）         : 標記書籤
"  `（a-z）/'（a-z）: 回到書籤
"  :marks           : 觀看書籤
"  :ver             : 觀看設定
"  :set tags=mytag  : 設定 tag 位置
"  ----------------Map------------------
"  vmap             : 反白膜式
"  nmap             : 一般模式
"  imap             : 插入模式
"  omap             : 操作模式
"  cmap             : 命令模式
"  map              : 一般/反白
"  map!             : 插入/命令
"***************************************


" ＃＃＃＃＃ 全域設定 ＃＃＃＃＃
"/****************************************************************************************
" @ LeaderKey = ','                                                           
" ***************************************************************************************/
let mapleader = ','


" ※※ Vundle 設定 ※※
set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" 自定安裝的套件（開始）

"/****************************************************************************************
"【 UI 】                                                                    
" @ nerdtree                                      : 顯示目前目錄結構
" @ tagbar                                        : 顯示目前檔案函式、變數、巨集
" @ vim-airline                                   : 顯示詳細下方狀態列
" @ indentLine                                    : 顯示垂直提示線                 
" @ xterm-color-table.vim                         : 測試顏色工具（執行 :XtermColorTable）（X）
" @ vim-nerdtree-tabs                             : 加強 Nerdtree，要先安裝 Nerdtree     （X）
" ***************************************************************************************/
Plugin 'xcrooloose/nerdtree'
Plugin 'majutsush/tagbar'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
"Plugin 'guns/xterm-color-table.vim'
"Plugin 'jistr/vim-nerdtree-tabs'

"/****************************************************************************************
"【 Util 】                                                                    
" @ vim-easymotion                                : 快速移動
" @ unite.vim                                     : 找檔案
" @ neomru.vim                                    : 顯示歷史紀錄
" @ OmniCppComplete                               : .     補完屬性
" @ supertab                                      : Tab   補完變數
" @ snipmate.vim                                  : S+Tab 補完 if（改熱鍵：vim/after/plugin/snipMate.vim）
" @ tabular                                       : 對齊程式碼
" @ vim-autoclose                                 : 自動補完括號（ {、[、( ）
" @ a.vim                                         : 開分割視窗
" @ sketch                                        : 畫圖工具　　　　　　　　　　　　（X）
" @ CCTree                                        : Trace Code                      （X）
" @ vim-easygrep                                  :                                 （X）
" @ syntastic                                     :                                 （X）
" ***************************************************************************************/
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'ervandew/supertab'
Plugin 'msanders/snipmate.vim'
Plugin 'godlygeek/tabular'
Plugin 'vim-autoclose'
Plugin 'vim-scripts/a.vim'
"Plugin 'vim-scripts/sketch.vim'
"Plugin 'hari-rangarajan/CCTree'
"Plugin 'dkprice/vim-easygrep'
"Plugin 'scrooloose/syntastic'



" 自定安裝的套件（結束）
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ


" ＃＃＃＃＃ 套件設定 ＃＃＃＃＃
"/****************************************************************************************
"【 NerdTree 】                                                                    
" @ o/x                                           : 開關資料夾
" @ p/P                                           : 到上層目錄/到根目錄
" @ K/J                                           : 同層目錄最上/下
" @ m                                             : 顯示 MENU（a:新增檔案）
" @ NERDTreeWinPos                                : 預設窗口在右邊
" @ NERDTreeIgnore                                : 忽略檔案
" @ <F2>                                          : F2 開/關                        （X）
" @ VimEnter * NERDTree                           : 預設開啟 NERDTree               （X）
" @ BufEnter * NERDTreeMirror                     : 開啟新分頁時自動開啟 NERDTree   （X）
" ***************************************************************************************/
au  VimEnter * NERDTree
map <F11>      :call CloseUI()<CR>
autocmd VimEnter * wincmd p
"map <F2>      :NERDTreeToggle<CR>
"au  BufEnter * NERDTreeMirror
let NERDTreeWinPos="right"
let g:NERDTreeIgnore=[
\    '\.a$',
\    '\.bz2$',
\    '\.exe$',
\    '\.files$',
\    '\.gz$',
\    '\.ko$',
\    '\.map$',
\    '\.out$',
\    '\.o$',
\    '\.P$',
\    '\.patch$',
\    '\.xz$']


"/****************************************************************************************
"【 NerdTree-Tab 】                                                                    
" @ 強化 NerdTree，需要先安裝 NerdTree
" @  NERDTreeTabsToggle                           : 預設開啟 NerdTree-Tab
" @ g:nerdtree_tabs_open_on_console_startup=1     : 開啟新分頁時自動開啟 NerdTree-Tab
" ***************************************************************************************/
"map <F11>      :call CloseUI()<CR>
"au  VimEnter * NERDTreeTabsToggle
"autocmd VimEnter * wincmd p
"let g:nerdtree_tabs_open_on_console_startup=1

"/****************************************************************************************
"【 Tagbar 】                                                                    
" @ VimEnter * Tagbar                             : 預設開啟 Tagbar
" @ g:tagbar_left=1                               : 預設窗口在左邊
" @ g:tagbar_width=30                             : 寬度 30
" @ updatetime=100                                : 反映時間（毫秒）
" @ BufEnter * nested :call tagbar#autoopen(0)    : 開啟新分頁時自動開啟 Tagbar     （X）
" @ <F1>                                          : F1 開/關                        （X）
" @ g:tagbar_show_linenumbers=1                   : 顯示行號                        （X）         
" @ g:tagbar_expend=1                             : 自動 GUI 視窗 NerdTree-Tab      （X）
" ***************************************************************************************/
au  VimEnter * Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
set updatetime=100
"au  BufEnter * nested :call tagbar#autoopen(0)
"nmap <F10>     :TagbarToggle<CR>
"let g:tagbar_show_linenumbers=1
"let g:tagbar_expend=1


"/****************************************************************************************
"【 Vim-easymotion 】                                                                    
" @ 啟動熱鍵（es：找字，ee：游標以下每行最前，ej：游標以下每個單字最後）
" ***************************************************************************************/
let g:EasyMotion_leader_key=',e'


"/****************************************************************************************
"【 Cscope 】                                                                    
" @ c <F1>                                        : 找呼叫此函式
" @ g <F2>                                        : 找定義此函式/變數
" @ s <F3>                                        : 找所有定義和呼叫（等於 c+g）
" @ d                                             : 找此函式中有呼叫的函式
" @ e                                             : 查找此字串以 egrep 搜尋（命令列較適合）
" @ f                                             : 查找並開檔（命令列較適合）
" @ i                                             : 查找列出 include 此檔的檔案（命令列較適合）
" @ t                                             : 查找所有此字串出現的地方，包含註解（命令列較適合）
" @ <leader>f                                     : 找下一個搜尋結果
" @ <leader>d                                     : 找上一個搜尋結果
" @ <leader>g                                     : 打開搜尋結果
" @ <Tab>t                                        : 回上頁
" ***************************************************************************************/
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <F1>        :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <F2>        :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <F3>        :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>1   :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>2   :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>3   :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <leader>4   :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>5   :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>6   :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>7   :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>8   :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>f   :cn<CR>
nmap <leader>d   :cp<CR>
nmap <leader>g   :botright copen 15<CR>
nnoremap <Tab>q      <C-o>
nnoremap <Tab>w      <C-i>



"/****************************************************************************************
"【 Unite 】                                                                    
" @ 找到檔案後，進入 Normal Mode 選檔
" @ <leader>f                                     : 找檔案
" @ <leader>b                                     : 看 buff                         （X）
" ***************************************************************************************/
nmap <leader>f       :Unite -start-insert file_rec<CR>
"nmap <leader>b       :Unite file buffer<CR>

"/****************************************************************************************
"【 Neomru 】                                                                    
" @ nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
" @ nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
" @ nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" @ nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" @ nnoremap <silent> ,uk :<C-u>Unite bookmark<CR>
" @ ,uu                                           : 看 Buff  + 歷史紀錄
" ***************************************************************************************/
nmap <silent><leader>uu :Unite file_mru buffer<CR>

"/****************************************************************************************
"【 Tabularize 】                                                                    
" @ <leader>a=                                    ：對其等號
" @ <leader>a:                                    ：對其冒號
" ***************************************************************************************/
"if exists(":Tabularize")
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>
"endif

"/****************************************************************************************
"【 Autoclose 】                                                                    
" @ {,(,[ 自動加上 ],),}
" ***************************************************************************************/
let g:autoclose_vim_commentmode = 1

"/****************************************************************************************
"【 supertab 】                                                                    
" @ Space                                         ：用空白建選擇跳出視窗的選項
" @ m                                             ：跳出視窗往上                     （X）
" @ ,                                             ：跳出視窗往下                     （X）
" ***************************************************************************************/
inoremap <expr> <Space> pumvisible() ? "\<C-y>" : " "
"inoremap <expr> m 			pumvisible() ? "\<C-N>" : "j"
"inoremap <expr> , 			pumvisible() ? "\<C-P>" : "k"

"/****************************************************************************************
"【 CCTree 】                                                                    
" autocmd VimEnter * call LoadCCTree()            ：啟動 vim 自動執行，不然就手動載入（X）
" <leader>>                                       ：caller
" <leader><                                       ：callee
" <leader>w                                       ：開關 CCTree 視窗
" ***************************************************************************************/
"autocmd VimEnter * call LoadCCTree()
function! LoadCCTree()
    if filereadable('cscope.out')
        CCTreeLoadDB cscope.out
    endif
endfunc

set updatetime=0
let g:CTreeRecursiveDepth = 6
let g:CCTreeKeyTraceForwardTree = '<leader>>'
let g:CCTreeKeyTraceReverseTree = '<leader><'
let g:CCTreeKeyToggleWindow     = '<leader>w'
nmap <leader>> :CCTreeTraceForward <C-R><C-w><CR>
nmap <leader>< :CCTreeTraceReverse <C-R><C-w><CR>

"/****************************************************************************************
"【 a.vim 】                                                                    
" :AS/:AV                                         ：開分割視窗
" ***************************************************************************************/


" ＃＃＃＃＃ 一般設定 ＃＃＃＃＃
"/****************************************************************************************                                                                 
" @ ic                                            ： 搜尋忽略大小寫
" @ history=300                                   ： 存放最大指令數
" @ cursorline                                    ： 記住游標所在列
" @ ruler                                         ： 記住游標所在座標
" @ hlsearch                                      ： 搜尋到的文字反白
" @ set backspace=indent,eol,start                ： Insert Mode 可用倒退鍵刪除
" @ encoding=utf-8                                ： UTF8 編碼
" @ fenc=utf-8                                    ： UTF8 編碼
" @ ai                                            ： 自動縮排
" @ nu                                            ： 顯示行號
" @ mouse=nv                                      ： 讓滑鼠可以拉動視窗
" @ scrolloff=10                                  ： 保持上下 10 行
" @ noswapfile                                    ： 關閉 swp 檔案
" @ tabstop=4 shiftwidth=4 expandtab              ： Tab 取代 4 Space
" @ whichwrap+=<,>,h,l,[,]                        ： 移動游標到行頭/尾時可跳下一行  （X）
" @ aw                                            ： 自動存檔                       （X）
" @ bk                                            ： 更改檔案會備份                 （X）
" @ incsearch                                     ： 邊輸入關鍵字邊搜尋             （X）
" @ foldmethod=indent                             ： 預設不折疊                     （X）
" @ foldlevelstart=99                                                               （X）
" @ autoread                                      ： 程式修改檔案時會自動重新讀取   （X）
" @ lazyredraw                                    ：                                （X）
" ***************************************************************************************/
set ic
set history=300
set cursorline
set ruler
set hlsearch
set backspace=2
set encoding=utf-8
set fenc=utf-8
set ai
set nu
set mouse=nv
set scrolloff=10
set noswapfile
set tabstop=4 shiftwidth=4 expandtab
"set whichwrap+=<,>,h,l,[,]
"set aw
"set bk
"set incsearch
"set foldmethod=indent
"set foldlevelstart=99
"set autoread
"set lazyredraw

" ＃＃＃＃＃ 配色 ＃＃＃＃＃
"/****************************************************************************************                                                                 
" @ JasonCC-Night                                 ： 選擇樣式
" @ t_Co=256                                      ： 開啟顏色
" @ syntax on                                     ： 語法上色
" @ \e[0                                          ： default
" @ \e[1                                          ： Cursor blinking block
" @ \e[2                                          ： Cursor steady block
" @ \e[3                                          ： Cursor blinking underscore
" @ \e[4                                          ： Cursor steady underscore
" @ \e[5                                          ： Cursor blinking line
" @ \e[6                                          ： Cursor steady line 
" @ :so $VIMRUNTIME/syntax/hitest.vim             ： 目前語法顏色設定
" ***************************************************************************************/
colorscheme JasonCC-Night
"colorscheme Tomorrow-Night
set t_Co=256
syntax on
let &t_ti.="\e[2 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[2 q"
let &t_te.="\e[0 q"


" ＃＃＃＃＃ 熱鍵 ＃＃＃＃＃
"/****************************************************************************************                                                                 
" @ <F12>                                         ： 建立 ctags
" @ <F10>                                         ： 呼叫 CCTree Trace Code
" @ <F9>                                          ： 編譯執行
" @ rl（reload）                                  ： 重新讀取 vimrc 
" @ jj                                            ： 回到 Normal Mode
" @ <leader>nn                                    ： 切換行數的顯示方式
" @ <leader>fp                                    ： 檔案完整路徑
" @ <leader>mk                                    ： 書籤
" @ <leader>rr                                    ： Register
" @ <S-f>                                         ： 翻下一頁
" @ <S-d>                                         ： 翻上一頁
" @ <S-q>                                         ： 關閉 VIM，不存檔
" @ <S-s>                                         ： 存檔
" @ <Tab>9                                        ： 行尾
" @ <Tab>8                                        ： 行首
" @ <C-x>                                         ： 剪下
" @ <C-c>                                         ： 複製
" @ <C-v>                                         ： 貼上
" @ -a                                            ： 取得游標所在屬性，用來改 color
" @ %                                             ： 跳到對稱的符號並選取
" @ <Space>                                       ： 取消搜尋高亮
" @ <C-y>                                         ： 往前
" @ :,/,?                                         ： 可以直接看歷史紀錄或是輸入新指令
" @ dts                                           ： 插入模式下面可以填上時間
" @ <C+UP/DOWN>                                   ： 將目前所在行移上移下
" @ <leader>e                                     ： 在 cmd 上面打開路徑              （X）
" @ <leader>mhl                                   ：                                  （X）
" ***************************************************************************************/      　                           
nnoremap <F12>               :call CreateDB()<CR>
nnoremap <F10>               :call LoadCCTree()<CR>
nnoremap <F9>                :w<CR> :!gcc % -o %< && ./%< <CR>
nnoremap <silent>rl          :so $MYVIMRC<CR>
inoremap <silent>jj          <Esc>
nnoremap <silent> <leader>nn :call NumberToggle()<CR>
nnoremap <leader>fp          :echo expand('%:p')<CR>
nnoremap <leader>mk          :marks<CR>
nnoremap <leader>rr          :reg<CR>
nnoremap <Tab>f              <C-f>
nnoremap <Tab>d              <C-b>
nnoremap <silent> <S-q>      :call ExitVim()<CR>
nnoremap <S-s>               :w<cr>
noremap  <Tab>9              $
noremap  <Tab>8              0
vnoremap <C-x>               "pd
nnoremap <C-x>               "pdiw
vnoremap <C-c>               "py
nnoremap <C-c>               "pyiw
vnoremap <C-v>               "pp
nnoremap <C-v>               "pP
inoremap <C-v>               <Esc>"ppa
noremap  -a                  :call SyntaxAttr()<CR>
nnoremap <Tab>5              v%
nnoremap <silent> <Space>    :nohlsearch<Bar>:echo<CR>
nnoremap <C-y>               <C-r>
nnoremap /                   q/i
"nmap :                      q:i
"nmap ?                      q?i
iab <expr> dts               strftime("%c")
nnoremap <C-DOWN>            :m+<CR>
nnoremap <C-UP>              :m-2<CR>
"nmap <leader>e              :e <C-R>=expand('%:p:h') . '/'<CR>
"nmap <leader>mhl            :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>



" ＃＃＃＃＃ 切換視窗/移動同時移動視窗 ＃＃＃＃＃
"/****************************************************************************************                                                                 
" @ <Tab> h/j/k/l                                 ： 游標移動視窗
" @ <C-J/K>                                       ： 螢幕隨游標移動
" ***************************************************************************************/     
nmap <Tab>h <C-w>h
nmap <Tab>j <C-w>j
nmap <Tab>k <C-w>k
nmap <Tab>l <C-w>l
nmap <C-J>               :call <SID>Saving_scroll("1<C-V><C-D>")<CR>
vmap <C-J>               <Esc>:call <SID>Saving_scroll("gv1<C-V><C-D>")<CR>
nmap <C-K>               :call <SID>Saving_scroll("1<C-V><C-U>")<CR>
vmap <C-K>               <Esc>:call <SID>Saving_scroll("gv1<C-V><C-U>")<CR>


" ＃＃＃＃＃ 分頁 ＃＃＃＃＃
"/****************************************************************************************                                                                 
" @ <F5>                                          ： 建立 Tab
" @ <F6>                                          ： 關閉 Tab
" @ <F7>/ <F8>                                    ： 上/下一個 Tab
" ***************************************************************************************/  
nmap <F5>                :tabnew<CR>
nmap <F6>                :tabclose<CR>
nmap <F7>                gT
nmap <F8>                gt



" ＃＃＃＃＃ 自訂方法 ＃＃＃＃＃
"/****************************************************************************************                                                                 
" @ Exit
" ***************************************************************************************/  
if !exists("*ExitVim")
    function ExitVim()
        call inputsave()
        let buildnow = input('Would you want to Exit Vim?(y/N)')
        if toupper(buildnow) == 'Y'
            exe "wqa<CR>"
        endif
    endfunction
endif


"/****************************************************************************************                                                                 
" @ 建立 ctag ,cscope 檔案，用來分析函式，變數等，在專案根目錄下執行
" ***************************************************************************************/  
if !exists("*CreateDB")
    function CreateDB()
        echohl WarningMsg | echom 'Execute Create Database!' | echohl None
        call inputsave()
        let buildnow = input('Would you want to build an new DB?(y/N)')
        if toupper(buildnow) == 'Y'
            silent !echo 'Execute Cscope and Ctags now,Please Wait...'
            silent !find ./ -name '*.aidl' -o -name '*.cc' -o -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.py' > 'cscope.files'
            silent !cscope -Rbq -i 'cscope.files'
            silent !ctags -R --c-kinds=+l --exclude=.svn --exclude=.git --c++-kinds=+p --fields=+iaS --extra=+q .
        endif
    endfunction
endif



"/****************************************************************************************                                                                 
" @ 改變行數顯示方式
" ***************************************************************************************/  
if !exists("*NumberToggle")
    function NumberToggle()
        if(&relativenumber == 1)
            set nu
        else
            set rnu
        endif
    endfunction
endif

"/****************************************************************************************                                                                 
" @ 只有游標在 QuickFix 視窗中才可使用
" @ 選擇檔案後還是停留在 QuickFix 視窗
" @ 按下 qq 關閉 QuickFix 游標回到主視窗
" ***************************************************************************************/  
augroup MyQFCommand
au!
au FileType qf nmap <buffer> <CR> <CR><C-W>j
au FileType qf nmap <silent> qq   :q<CR><C-W>l
augroup END

"/****************************************************************************************                                                                 
" @ " 自動搜尋 Cscope DB，不需要在 Cscope 目錄下開啟 Vim
" **************************************************************************************
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au BufEnter /* call LoadCscope()

"/****************************************************************************************                                                                 
" @ 高亮滑鼠所在變數
" ***************************************************************************************/  
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=100
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

"/****************************************************************************************                                                                 
" @ 取得屬性
" ***************************************************************************************/  
function! SyntaxAttr()
     let synid = ""
     let guifg = ""
     let guibg = ""
     let gui   = ""

     let id1  = synID(line("."), col("."), 1)
     let tid1 = synIDtrans(id1)

     if synIDattr(id1, "name") != ""
    let synid = "group: " . synIDattr(id1, "name")
    if (tid1 != id1)
         let synid = synid . '->' . synIDattr(tid1, "name")
    endif
    let id0 = synID(line("."), col("."), 0)
    if (synIDattr(id1, "name") != synIDattr(id0, "name"))
         let synid = synid .  " (" . synIDattr(id0, "name")
         let tid0 = synIDtrans(id0)
         if (tid0 != id0)
        let synid = synid . '->' . synIDattr(tid0, "name")
         endif
         let synid = synid . ")"
    endif
     endif

     " Use the translated id for all the color & attribute lookups; the linked id yields blank values.
     if (synIDattr(tid1, "fg") != "" )
    let guifg = " guifg=" . synIDattr(tid1, "fg") . "(" . synIDattr(tid1, "fg#") . ")"
     endif
     if (synIDattr(tid1, "bg") != "" )
    let guibg = " guibg=" . synIDattr(tid1, "bg") . "(" . synIDattr(tid1, "bg#") . ")"
     endif
     if (synIDattr(tid1, "bold"     ))
    let gui   = gui . ",bold"
     endif
     if (synIDattr(tid1, "italic"   ))
    let gui   = gui . ",italic"
     endif
     if (synIDattr(tid1, "reverse"  ))
    let gui   = gui . ",reverse"
     endif
     if (synIDattr(tid1, "inverse"  ))
    let gui   = gui . ",inverse"
     endif
     if (synIDattr(tid1, "underline"))
    let gui   = gui . ",underline"
     endif
     if (gui != ""                  )
    let gui   = substitute(gui, "^,", " gui=", "")
     endif

     echohl MoreMsg
     let message = synid . guifg . guibg . gui
     if message == ""
    echohl WarningMsg
    let message = "<no syntax group here>"
     endif
     echo message
     echohl None
endfunction

"/****************************************************************************************                                                                 
" @ 高亮滑鼠所在變數
" ***************************************************************************************/  
function! CloseUI()
exe "NERDTreeToggle"
exe "TagbarToggle"
endfunction

"/****************************************************************************************                                                                 
" @ 移動同時移動視窗
" ***************************************************************************************/  
function! s:Saving_scroll(cmd)
  let save_scroll = &scroll
  execute 'normal! ' . a:cmd
  let &scroll = save_scroll
endfunction




"/****************************************************************************************
"【 移除外掛 】                                                                    
" @ molokai                                       : 顯示目前游標加亮
" @ ctrlp.vim                                     : 按下 Ctrl+p 找檔案             （X）
" @ bufexplorer                                   : 管理 Buff                       （X）
" ***************************************************************************************/