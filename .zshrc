plugins=(
    git
)

# Elena customisations

export PYTHONDONTWRITEBYTECODE=1
export PIP_DOWNLOAD_CACHE=$HOME/Library/Caches/pip

export VIRTUALENVWRAPPER_PYTHON=/opt/homebrew/bin/python3.8
export WORKON_HOME=$HOME/.venvs
export PROJECT_HOME=$HOME/Code
source /opt/homebrew/bin/virtualenvwrapper.sh

alias nb="cd ~/Code/scripts_elenaw/notebook&&pipenv shell"
alias jp="jupyter notebook --port 8889"
alias reload="source ~/.zshrc"

# END elena customisations

# export PATH=/opt/homebrew/opt:$PATH

[ -d "/opt/homebrew" ] && echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile && source ~/.zprofile


alias python=python3.10
export PATH="/opt/homebrew/bin/python3.10":$PATH

# Platform 

# Adding Homebrew to PATH
# export PATH="$PATH:$(brew --prefix)/bin:$(brew --prefix openjdk)/bin:$(brew --prefix libpq)/bin"
export PATH=$PATH:"/opt/homebrew/opt/bin"
export PATH=$PATH:"/opt/homebrew/opt/libpq/bin"
export PATH=$PATH:"/opt/homebrew/opt/openjdk/bin"
export PATH=$PATH:"/opt/homebrew/opt/ncurses/bin"


# export PKG_CONFIG_PATH="$(brew --prefix lapack)/lib/pkgconfig:$(brew --prefix zlib)/lib/pkgconfig:$(brew --prefix bzip2)/lib/pkgconfig:$(brew --prefix ncurses)/lib/pkgconfig:$(brew --prefix openblas)/lib/pkgconfig"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/lapack/lib/pkgconfig"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/bzip2/lib/pkgconfig"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/zlib/lib/pkgconfig"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/ncurses/lib/pkgconfig"
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/opt/homebrew/opt/openblas/lib/pkgconfig"


# export LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix zlib)/lib -L$(brew --prefix bzip2)/lib -L$(brew --prefix ncurses)/lib"
export LDFLAGS=LDFLAGS:"-L/opt/homebrew/opt/openssl/lib"
export LDFLAGS=LDFLAGS:"-L/opt/homebrew/opt/bzip2/lib"
export LDFLAGS=LDFLAGS:"-L/opt/homebrew/opt/lapack/lib"
export LDFLAGS=LDFLAGS:"-L/opt/homebrew/opt/zlib/lib"
export LDFLAGS=LDFLAGS:"-L/opt/homebrew/opt/ncurses/lib"


# Adding compiler flags
# export CPPFLAGS="-I$(brew --prefix openssl)/include -I$(brew --prefix zlib)/include -I$(brew --prefix bzip2)/include -I$(brew --prefix ncurses)/include"
export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/openssl/include"
export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/zlib/include"
export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/bzip2/include"
export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/openjdk/include"
export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/lapack/include"
export CPPFLAGS=$CPPFLAGS:"-I/opt/homebrew/opt/ncurses/include"


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

