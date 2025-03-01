# Add Linuxbrew to PATH
set -g PATH /home/linuxbrew/.linuxbrew/bin $PATH

# Add Go to PATH
set -g PATH /usr/local/go/bin $PATH

function config
    cd ~/.config/
end


if status is-interactive
    # Commands to run in interactive sessions can go here
end
