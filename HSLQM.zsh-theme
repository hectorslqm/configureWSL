# Hector Samuel Lazcano Quintero Marmol Custom Theme
# hector-lazcano.vercel.app
# directory
function directory() {
    local color="%{$fg_bold[white]%}";
    local directory="${PWD/#$HOME/~}";
    local color_reset="%{$reset_color%}";
    echo "${color}${directory}${color_reset}";
}

function git_status_icon() {
  # Return if not a repo
  git rev-parse --is-inside-work-tree &>/dev/null || return

  # Count staged and unstaged
  local staged=$(git diff --cached --name-only | wc -l)
  local unstaged=$(git diff --name-only | wc -l)

  # Get branch
  local branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD)

  # Build output
  local icon=""
  if [[ $staged -gt 0 ]]; then
    icon="🟡"
  elif [[ $unstaged -gt 0 ]]; then
    icon="❌"
  else
    icon="🟢"
  fi

  echo "%{$fg[cyan]%}($branch)$icon%{$reset_color%}"
}

setopt prompt_subst

PROMPT='%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜ ) $(directory) $(git_status_icon):'