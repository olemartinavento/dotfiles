# Path
set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths

# Fix for vim complaining about locale
set -x LC_ALL en_US.UTF-8

# Editor
set -Ux EDITOR nvim

# FZF
set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""' 

# Aliases
alias vim "nvim"
alias c "clear"


# Navigation
# alias dot "cd ~/.dotfiles"
# alias code "cd ~/Code"
# alias dt "cd ~/Desktop"
# alias dl "cd ~/Downloads"
# alias db "cd ~/Dropbox"
alias ... "cd ../.."
alias o "open"
alias oo "open ."


# Functions
function mkd
  mkdir $argv
  cd $argv
end

function homestead
  cd ~/Code/Homestead
  vagrant $argv
  cd -
end

function mux
  tmuxinator $argv
end