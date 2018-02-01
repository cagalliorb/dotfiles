#pyenvの環境変数設定*/
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
eval "$(pyenv init -)"

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi
export LSCOLORS=gxfxcxdxbxegedabagacad
