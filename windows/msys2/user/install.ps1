# Clone Oh My Zsh
git clone --depth 1 https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

if ($?) {
	git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions $env:ZSH_CUSTOM/plugins/zsh-autosuggestions
} else {
	 Write-Host "The first command failed; the second command will not be executed."
}
