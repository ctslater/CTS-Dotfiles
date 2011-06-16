
# Turn on "Uniqueness" for path, so we don't add directories
# multiple times to it.
typeset -U path

# Color ls output
export CLICOLOR

export CTS_DATA_DIR='/Users/ctslater/Data'

# Cloudy
export CLOUDY_DATA_PATH="/Users/ctslater/c08.00/data"
path=(/Users/ctslater/c08.00/source $path)

# Path to macports. Need it first, so it overrides default versions
path=(/opt/local/bin $path)

# Ruby
export GEM_HOME="$HOME/gems"
path=($GEM_HOME/bin $path)

# Laptop specific
if [[ `hostname` = "ctslatermaclt.local" ]]; then
    # MBP specific commands
fi
