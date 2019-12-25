# monokrom.vim

![monokrom.vim](screenshot.png)

Supports both 256 color and true color modes.


### Installation

Using `vim-plug`:

```
Plug 'alexanderheldt/monokrom.vim'
```


### Usage

To enable this color scheme, set it in your `.vimrc`:

```vim
colorscheme monokrom
```

### Terminal True Color Support

To enable true colors, set this in your `.vimrc`:

```vim
if has('nvim') || has('termguicolors')
    set termguicolors
endif
```

### Plugin support
monokrom.vim have highlights specified for these plugins:

- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [fzf.vim](https://github.com/junegunn/fzf.vim)

If you're using fzf.vim and want the `:Rg` command colors to match the fzf colors then you should override it in a way like this:

```vim
command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \   "rg --line-number  --column --hidden --no-heading --smart-case --color=always
    \       --colors=path:fg:0xff,0xff,0xff
    \       --colors=line:fg:0xc6,0xc6,0xc6
    \       --colors=column:fg:0xc6,0xc6,0xc6
    \       --colors=match:fg:0xf9,0xc2,0x2b "
    \ . shellescape(<q-args>), 1, <bang>0)
```

### Inspired by

- https://github.com/fxn/vim-monochrome
- https://github.com/Lokaltog/vim-monotone
- https://github.com/axvr/photon.vim
