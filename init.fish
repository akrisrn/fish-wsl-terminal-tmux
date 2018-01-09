# wsl-terminal启动时运行tmux
if test -z "$TMUX"; and test -n "$USE_TMUX"
    if test -n "$ATTACH_ONLY"
        if not tmux a 2>/dev/null
            cd; and exec tmux
        end
        exit
    end

    tmux new-window -c "$PWD" 2>/dev/null; and exec tmux a
    exec tmux
end
