
# ==========================
# | Symlink                |
# ==========================

# SYMLINK home directory files:
for DOTFILE in `find $HOME/.dotfiles/home -type f -printf "%f\n"`
do
	[ -f "$HOME/.dotfiles/home/$DOTFILE" ] && ln -sf "$HOME/.dotfiles/home/$DOTFILE" "$HOME/$DOTFILE"
done

# SYMLINK .config directories
for CONFIG in `find $HOME/.dotfiles/config -type d -printf "%f\n"`
do	
	[ -d "$HOME/.dotfiles/config/$CONFIG" ] && ln -sf "$HOME/.dotfiles/config/$CONFIG" "$HOME/.config/$CONFIG"
done

# SYMLINK .config files
for CONFIG in `find $HOME/.dotfiles/config -type f -printf "%f\n"`
do
	[ -f "$HOME/.dotfiles/config/$CONFIG" ] && ln -sf "$HOME/.dotfiles/config/$CONFIG" "$HOME/.config/$CONFIG"
done