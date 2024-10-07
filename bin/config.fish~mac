# cp bin_and_configs/config.fish ~/.config/fish/
set -Ux LSCOLORS gxfxbEaEBxxEhEhBaDaCaD #gxfxbEaEBxxEhEhBaDaCaD
#set -g theme_color_scheme solarized #light #
#set -g bobthefish_display_colors terminal2-light-white #gruvbox #dark
set PATH $PATH ~/opt/anaconda3/bin . ~/bin ~/.cargo/bin
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_title_use_abbreviated_path yes
set -g theme_display_date no
set -g theme_display_cmd_duration no
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_git no
eval (/opt/homebrew/bin/brew shellenv)
status --is-interactive; and source (rbenv init -|psub)

setenv MANPATH /usr/share/man:/usr/man:/usr/catman:/usr/local/man:/usr/local/catman:/usr/unsupported/man:/export/man:/usr/local/teTeX/man

source /Users/bob/.config/fish/gtm-plugin.fish

alias hello "ruby -e 'puts(\"hello\")'"
alias julia '/Applications/Julia-1.5.app/Contents/Resources/julia/bin/julia'
alias word  "open /Applications/Microsoft\ Word.app/"
alias excel  "open /Applications/Microsoft\ Excel.app/"
alias illure  "open /Applications/Adobe\ Illustrator\ CS5.1/Adobe\ Illustrator.app/"
alias illustrator  "open /Applications/Adobe\ Illustrator\ CS5.1/Adobe\ Illustrator.app/"
alias latexit "open /Applications/LaTeXiT.app/"
alias xmaple 'open /Applications/Maple\ 18/Maple\ 18.app/'
alias ls 'ls -vCFG'
alias ll 'ls -al'
alias rm 'rm -i'
alias mv 'mv -i'
alias cp 'cp -i'
alias bye 'exit'
alias h history
alias tidy '~/bin/tidy'
alias xemacs 'emacs'
alias emacs 'emacs -nw'
alias maple '/Library/Frameworks/Maple.framework/Versions/Current/bin/maple'

setenv EDITOR emacs
setenv PUT_RAKE_PATH '/Users/bob/bin/Rakefiles'

# Setting PATH for Python 3.9
# The original version is saved in /Users/bob/.config/fish/config.fish.pysave
#set -x PATH "/Library/Frameworks/Python.framework/Versions/3.9/bin" "$PATH"

# for autocompletion <2021-12-19 日>
# see https://docs.brew.sh/Shell-Completion
if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/bob/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<



