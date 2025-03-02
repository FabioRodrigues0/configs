#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

git clone https://github.com/NvChad/starter ~/.config/nvim

ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim

ln -sf "$PWD/.bash_profile" "$HOME"/.bash_profile
ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
ln -sf "$PWD/.inputrc" "$HOME"/.inputrc
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/.zshrc" "$HOME"/.zshrc
ln -sf "$PWD/.starship.toml" "$HOME"/.config/starship.toml
ln -sf "$PWD/catppuccin-mocha.kdl" "$HOME"/vscode/.config/zellij/tmp/catppuccin-mocha.kdl
ln -sf "$PWD/config.kdl" "$HOME"/vscode/.config/zellij/config.kdl

packages=(
	luarock
 	zsh
	ripgrep
 	starship
  	yazi 
   	ffmpeg 
    	sevenzip 
     	jq 
      	poppler 
       	fzf 
	zoxide 
 	imagemagick 
  	font-symbols-only-nerd-font
)
echo "Updating Brew"
sudo /home/linuxbrew/.linuxbrew/bin/brew update

for package in "${packages[@]}"; do
	echo "Installing $package..."
	sudo /home/linuxbrew/.linuxbrew/bin/brew install "$package"
done

wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv



echo "All packages from the setup script have been installed."
