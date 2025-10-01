#!/bin/bash

# Icons
session_icon=""
git_folder_icon=""
folder_icon=""
branch_icon=""

# Session name and window index
session_name=$(tmux display-message -p '#S')
window_index=$(tmux display-message -p '#I')

# Current working directory of the active pane
path=$(tmux display-message -p '#{pane_current_path}')
folder=$(basename "$path")

# Detect git repo
if [ -d "$path/.git" ]; then
    dir_icon="$git_folder_icon"
    branch=$(git -C "$path" rev-parse --abbrev-ref HEAD 2>/dev/null)
    git_info="$branch_icon $branch"
else
    dir_icon="$folder_icon"
    git_info=""
fi

# Final output
echo "$session_icon $session_name $dir_icon $folder $git_info"
