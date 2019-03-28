if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/home/kondo/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/kondo/.vim/after,/home/kondo/.vim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/kondo/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/kondo/.vim/dein'
let g:dein#_runtime_path = '/home/kondo/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/kondo/.vim/dein/.cache/.vimrc'
let &runtimepath = '/home/kondo/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/home/kondo/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim80,/home/kondo/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/kondo/.vim/after,/home/kondo/.vim/dein/repos/github.com/Shougo/dein.vim'
filetype off
