echo "git cloning zsh-autosuggestions plugins"
echo "executing command:"
echo "git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
if command -v git >/dev/null 2>&1; then
    git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else
    echo -e "\033[31mGit is not installed.\033[0m"
    exit 1
fi
