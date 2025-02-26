#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim

ln -sf "$PWD/.bash_profile" "$HOME"/.bash_profile
ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
ln -sf "$PWD/.inputrc" "$HOME"/.inputrc
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/.zshrc" "$HOME"/.zshrc
ln -sf "$PWD/.starship.toml" "$HOME"/.config/starship.toml

packages=(
	luarock
	ripgrep
)
echo "Updating Brew"
sudo /home/linuxbrew/.linuxbrew/bin/brew update

for package in "${packages[@]}"; do
	echo "Installing $package..."
	sudo /home/linuxbrew/.linuxbrew/bin/brew install "$package"
done

echo "All packages from the setup script have been installed."
