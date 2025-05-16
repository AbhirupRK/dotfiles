source $HOME/.vimrc

call plug#begin()
"Plug 'tpope/vim-sensible'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'EdenEast/nightfox.nvim'
call plug#end()

colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
"colorscheme Carbonfox

" Set a transparent background
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE

" Preserve cursor position when reopening a file
augroup preserve_cursor
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   execute "normal! g`\"" |
        \ endif
augroup END

""set number
"set nowrap
"set mouse=
"
"" Keybindings
"nnoremap q :q<CR>
"nnoremap L :set number!<CR>
"nnoremap W :set wrap!<CR>:echo "Text wraping is now " . (&wrap ? "ON" : "OFF")<CR>
