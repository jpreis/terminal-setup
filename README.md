# Terminal Setup

![iTerm preferences](header.png?raw=true)

* **Shell:** zsh (with [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh))
* **Terminal:** [iTerm 2](https://iterm2.com/) (with [Night Owl](https://github.com/nickcernis/iterm2-night-owl) color preset)
* **Prompt:** [powerlevel10k](https://github.com/romkatv/powerlevel10k)
* **Font:** [Pragmata Pro](https://medium.com/r?url=https%3A%2F%2Ffsd.it%2Fshop%2Ffonts%2Fpragmatapro%2F)
* **Tools & Plugins:** [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), [autojump](https://github.com/wting/autojump), [thefuck](https://github.com/nvbn/thefuck), [fzf](https://github.com/junegunn/fzf), [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git), [lazygit](https://github.com/jesseduffield/lazygit), [bat](https://github.com/sharkdp/bat)

## Requirements
* [Homebrew](https://brew.sh/index_de)
* Make sure you have zsh installed and use it as the default login shell

## Recreating the setup

Clone this repository and copy `.zshrc`, `.p10k.zsh` and `com.googlecode.iterm2.plist` into your home directory. I've decided not to include the entire oh-my-zsh installation here, so you'll have install it manually.

If you want to start from scratch instead, follow the corresponding Medium article.

### Shell & CLI tools

* Install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
* Install powerlevel10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
* Install zsh-syntax-highlighting (and any other custom oh-my-zsh plugins)
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
* Install CLI tools via Homebrew
```
brew install autojump thefuck fzf lazygit bat
```

### iTerm 2

* Download [here](https://iterm2.com/)
* In the iTerm preferences, select to load preferences from a custom folder and select your home directory
![iTerm preferences](./iterm.png?raw=true)

**Note:** You will have to select another font in the preferences if you don't have Pragmata Pro installed. If you want to use powerlevel10k, I recommend installing the Meslo Nerd font using the powerlevel10k configuration wizard (`p10k configure`).