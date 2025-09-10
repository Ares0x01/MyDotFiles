 -----------------------------
# Basic Zsh setup
# -----------------------------
# Enable command completion
autoload -Uz compinit
compinit

autoload -U colors && colors
export CLICOLOR=1
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lah --color=auto'

export LS_COLORS="di=34:ln=36:so=32:pi=33:ex=32:bd=34;46:cd=34;43:*.tar=31:*.gz=31:*.zip=31:*.rar=31:*.7z=31:*.bz2=31:*.jpg=35:*.jpeg=35:*.png=35:*.gif=35:*.bmp=35:*.svg=35:*.mp4=36:*.mkv=36:*.mov=36:*.avi=36:*.mp3=33:*.wav=33:*.flac=33:*.py=92:*.js=93:*.html=95:*.css=96:*.json=37:*.txt=37:*.md=37:*.log=37:*.conf=36:*.ini=36:*.cfg=36"
# -----------------------------
# Prompt with color
# -----------------------------
# Simple colored prompt
autoload -Uz colors && colors
PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[purple]%}%m%{$reset_color%} %{$fg[blue]%}%~%{$reset_color%} \$ "
# -----------------------------
# Enable syntax highlighting
# -----------------------------
# Install zsh-syntax-highlighting if you haven't
# sudo apt install zsh-syntax-highlighting

# -----------------------------
# Colored echo examples
# -----------------------------
# Usage: colored_echo "text" "color_code"
colored_echo() {
    local text=$1
    local color=$2
    echo -e "\e[${color}m${text}\e[0m"
}
# Examples:
# colored_echo "Hello Red!" 31
# colored_echo "Hello Green!" 32

# -----------------------------
# Kitty clipboard shortcuts (via zsh)
# -----------------------------
# Note: Actual mapping is in kitty.conf
# These aliases make it easy from terminal
alias copy='kitty +kitten clipboard copy'
alias paste='kitty +kitten clipboard paste'

# -----------------------------
# Optional: aliases for quick navigation
# -----------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias cls='clear'

# -----------------------------
# Reload zsh config function
# -----------------------------
alias reloadzsh='source ~/.zshrc && echo "Zsh reloaded!"'
alias lh='tree -C -L 2'
# At the end of your ~/.zshrc
# --- Your existing sources ---
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source ~/.zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

# --- Now set your colors ---
# cd is a builtin, so we target 'builtin'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=blue,bold'

# Optional: make external commands white
ZSH_HIGHLIGHT_STYLES[command]='fg=blue,bold'
