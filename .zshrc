plugins=(
    git
)

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"


# Elena customisations



export PYTHONPYCACHEPREFIX="${HOME}/.cache/Python"
export PYTHONDONTWRITEBYTECODE=1
export PIP_DOWNLOAD_CACHE=$HOME/Library/Caches/pip


export CURRENT_PYTHON="/opt/homebrew/bin/python3.10"

alias python=$CURRENT_PYTHON
alias python3=$CURRENT_PYTHON
export PATH=$CURRENT_PYTHON:$PATH

export VIRTUALENVWRAPPER_PYTHON=$CURRENT_PYTHON
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/Code
source /opt/homebrew/bin/virtualenvwrapper.sh

alias nb="cd ~/_.notebooks&&pipenv shell"
alias jp="jupyter notebook --port 8889"

alias reload="source ~/.zshrc"

# END elena customisations

# export PATH=/opt/homebrew/opt:$PATH

[ -d "/opt/homebrew" ] && echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile && source ~/.zprofile


# Platform 

# Adding Homebrew to PATH
# export PATH="$PATH:$(brew --prefix)/bin:$(brew --prefix openjdk)/bin:$(brew --prefix libpq)/bin"
export PATH=$PATH:"/opt/homebrew/opt/bin"
export PATH=$PATH:"/opt/homebrew/opt/libpq/bin"
export PATH=$PATH:"/opt/homebrew/opt/openjdk/bin"
export PATH=$PATH:"/opt/homebrew/opt/ncurses/bin"
export PATH="/opt/homebrew/opt/zlib/bin":$PATH


export PKG_CONFIG_PATH="$(brew --prefix lapack)/lib/pkgconfig:$(brew --prefix zlib)/lib/pkgconfig:$(brew --prefix bzip2)/lib/pkgconfig:$(brew --prefix ncurses)/lib/pkgconfig:$(brew --prefix openblas)/lib/pkgconfig"
# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/lapack/lib/pkgconfig"
# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/bzip2/lib/pkgconfig"
# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/zlib/lib/pkgconfig"
# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/ncurses/lib/pkgconfig"
# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/openblas/lib/pkgconfig"


export LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix zlib)/lib -L$(brew --prefix bzip2)/lib -L$(brew --prefix ncurses)/lib"
# export LDFLAGS=$LDFLAGS:"-L/opt/homebrew/opt/openssl/lib"
# export LDFLAGS=$LDFLAGS:"-L/opt/homebrew/opt/bzip2/lib"
# export LDFLAGS=$LDFLAGS:"-L/opt/homebrew/opt/lapack/lib"
# export LDFLAGS=$LDFLAGS:"-L/opt/homebrew/opt/zlib/lib"
# export LDFLAGS=$LDFLAGS:"-L/opt/homebrew/opt/ncurses/lib"


# Adding compiler flags
export CPPFLAGS="-I$(brew --prefix openssl)/include -I$(brew --prefix zlib)/include -I$(brew --prefix bzip2)/include -I$(brew --prefix ncurses)/include"
# export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/openssl/include"
# export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/zlib/include"
# export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/bzip2/include"
# export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/openjdk/include"
# export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/lapack/include"
# export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/ncurses/include"


export NPY_DISTUTILS_APPEND_FLAGS=1
export SYSTEM_VERSION_COMPAT=1
export CFLAGS="-falign-functions=8"

# Adding library locations
export LAPACK=$(brew --prefix lapack)/lib/liblapack.dylib
export BLAS=$(brew --prefix openblas)/lib/libopenblas.dylib

# Other variables
export OPENBLAS="$(brew --prefix openblas)"
export JAVA_HOME="$(brew --prefix openjdk)"

# For dagster
export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1


# ==> awscli
# The "examples" directory has been installed to:
#   /opt/homebrew/share/awscli/examples

eval "$(direnv hook zsh)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
