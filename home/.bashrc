# # If not running interactively, don't do anything
[[ $- == *i* ]] || return

# Add dotfile binaries to PATH before sourcing dotfiles
PATH="$HOME/.dotfiles/bin/main:$PATH";
PATH="$HOME/.dotfiles/bin/apps:$PATH";
PATH="$HOME/.dotfiles/bin/fun:$PATH";

for DOTFILE in `find $HOME/.dotfiles/shell/global -type f -name ".*" -printf "%f\n"`
do
    source "$HOME/.dotfiles/shell/global/$DOTFILE"
done
unset DOTFILE

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
