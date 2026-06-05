function fzf-cliphist-widget() {
    # Cek cliphist
    (($+commands[cliphist])) || {
        zle -M "You’re the reason shampoo bottles have instructions. Go install cliphist!"
        return 1
    }

    # Cek fzf
    (($+commands[fzf])) || {
        zle -M "Bold of you to run this without fzf. Install it first, you absolute clown."
        return 1
    }

    local selected="$(cliphist list | fzf)"
    if [[ -n "$selected" ]]; then
        local decoded_text="$(printf "%s\n" "$selected" | cliphist decode)"
        LBUFFER+="$decoded_text"
    fi
    zle reset-prompt
}

zle -N fzf-cliphist-widget

bindkey '^G' fzf-cliphist-widget
