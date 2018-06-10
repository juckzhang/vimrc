set nocompatible
  filetype off 
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'scrooloose/nerdtree' " 目录树
  Plugin 'vim-scripts/taglist.vim'
  Plugin 'majutsushi/tagbar'
  Plugin 'shawncplus/phpcomplete.vim' " php代码补全
  Plugin 'kien/ctrlp.vim' " 文件查找
  " Plugin 'altercation/vim-colors-solarized'
  Plugin 'SirVer/ultisnips' " 代码快捷键结合honza/vim-snippets
  Plugin 'honza/vim-snippets' " 代码快捷键
  Plugin 'crooloose/nerdcommenter' " 注释
  Plugin 'sjl/gundo.vim' " 撤销
  Plugin 'w0rp/ale' " 语法检查插件
  call vundle#end()
  filetype plugin indent on
  
  " vim 常用设置
  syntax on " 语法高亮
  set nu " 显示行号
  set backspace=indent,eol,start
  set smartindent  
  set tabstop=4  
  set shiftwidth=4  
  set expandtab  
  set softtabstop=4
  let mapleader = "," 
  
  
  " phpcomplete 配置
  let g:phpcomplete_mappings = {
     \ 'jump_to_def': '<C-]>',
     \ 'jump_to_def_split': '<C-W><C-]>',
     \ 'jump_to_def_vsplit': '<C-W><C-\>',
     \ 'jump_to_def_tabnew': '<C-W><C-[>',
     \}
  
  "nerdtree 设置
  "autocmd vimenter * NERDTree " 自动开启目录树
  "autocmd StdinReadPre * let s:std_in=1
  map <Leader>dir :NERDTreeToggle<CR>
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  
  " nerdCommenter 配置
  
  " gundo配置
  nnoremap <Leader>u :GundoToggle<CR>
  
  " solarized 配置
  " syntax enable
  " set background=dark
  " colorscheme solarized
  " let g:solarized_termcolors=256
  
  " TagList 配置
  nnoremap <Leader>tlist :TlistToggle<CR>
  
  " tagbar配置
  nnoremap <Leader>tbar :TagbarToggle<CR>
  
  " airline 配置
  set laststatus=2  "永远显示状态栏
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_theme='bubblegum'
  
  "ale
  "始终开启标志列
  let g:ale_sign_column_always = 1
  let g:ale_set_highlights = 0
  "自定义error和warning图标
  let g:ale_sign_error = '✗'
  let g:ale_sign_warning = '⚡ '
  "在vim自带的状态栏中整合ale
  let g:ale_statusline_format = ['✗ %d', '⚡  %d', '✔ OK']
  "显示Linter名称,出错或警告等相关信息
  let g:ale_echo_msg_error_str = 'E'
  let g:ale_echo_msg_warning_str = 'W'
  let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
  "普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
  nmap sp <Plug>(ale_previous_wrap)
  nmap sn <Plug>(ale_next_wrap)
  "<Leader>s触发/关闭语法检查
  nmap <Leader>s :ALEToggle<CR>
  "<Leader>d查看错误或警告的详细信息
  nmap <Leader>d :ALEDetail<CR>
  let g:ale_lint_on_text_changed = 'never'
