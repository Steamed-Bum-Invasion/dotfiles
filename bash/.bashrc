# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi

############################################# STANDARD CHANGES #########################################
export EDITOR= neovim
alias nv='nvim'
alias cd='z'

PS1='\[\e[0;32m\]\u@\h\[\e[0m\]:\[\e[0;32m\]\W\[\e[0m\]\n\[\e[1;34m\]└❯\[\e[0m\] '

unset rc

eval "$(zoxide init bash)"

alias get_idf_5.1.4='. $HOME/esp/esp-idf-5.1.4/export.sh'
alias get_idf_5.1.5='. $HOME/esp/esp-idf-5.1.5/export.sh'
alias get_idf_5.2.3='. $HOME/esp/esp-idf-5.2.3/export.sh'
alias get_idf_5.3.1='. $HOME/esp/esp-idf-5.3.1/export.sh'

bind 'set completion-ignore-case on'

export EDITOR=nvim
export VISUAL=nvim
export SSH_AUTH_SOCK=/home/dhruv/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock

export PATH=/usr/local/cuda-12.6/bin${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64\
#                          ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
#
# export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

. "$HOME/.local/bin/env"
