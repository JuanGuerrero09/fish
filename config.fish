# Add Linuxbrew to PATH
set -g PATH /home/linuxbrew/.linuxbrew/bin $PATH

# Add Go to PATH
set -g PATH /usr/local/go/bin $PATH

function config
    cd ~/.config/
end

# Make Up/Down arrows behave like traditional history navigation
bind \e\[A up-or-search
bind \e\[B down-or-search


if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting ''

echo "🔥 Bienvenido, Maestro del Terminal 🔥"
set_color green
echo "🚀 Listo para la acción, $USER!"
set_color normal

function fish_prompt
    set_color cyan
    echo -n "👤 Ing. Juan "
    set_color green
    echo -n (prompt_pwd)
    set_color normal
    echo -n "> "
end

if status is-interactive
    and not set -q TMUX
    exec tmux
end

#starship init fish | source
