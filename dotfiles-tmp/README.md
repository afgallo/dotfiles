# 🌌 Galactic Dotfiles 🌠

Hello Future Me (or curious traveler from another galaxy)! Welcome to the control center of my digital spaceship! This is where I keep the settings for my command-line interfaces and tools, so they always feel familiar no matter which planet (machine) I'm on.

## 🚀 Quick Start

So you've landed on a brand new planet and you need to set up your tools. Here's how to get started:

1. **Clone this repository:**

   First, make sure you have `git` installed:

   ```bash
   which git || (echo "Git is not installed. Installing now..." && sudo apt install git)
   ```

   Now, clone this repo as a bare repository:

   ```bash
   git clone --bare git@github.com:afgallo/dotfiles.git $HOME/.dotfiles
   ```

2. **Checkout the actual content from the bare repository to your `$HOME` directory:**

   ```bash
   alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
   dotfiles checkout
   ```

   > Note: If the above command complains about conflicts, it means you have pre-existing configuration files that would be overwritten by Git. Backup the conflicting files and retry the checkout command.

3. **Add the alias to your `.zshrc` or `.bashrc` so you can easily use the dotfiles command in the future:**

   ```bash
   echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
   ```

## 🛠 How to Add New Files or Configurations

Whenever you stumble upon a new piece of galactic wisdom (aka a cool configuration or setting) and want to save it for later, here's how:

1. **Go to a temporary directory:**

   This avoids unintentionally adding other files present in the `$HOME` directory.

   ```bash
   mkdir ~/dotfiles-tmp
   cd ~/dotfiles-tmp
   ```

2. **Create or modify the file with your new settings.**

3. **Use the `dotfiles` alias to add and commit your changes:**

   ```bash
   dotfiles add <filename>
   dotfiles commit -m "Your commit message"
   ```

4. **Push your changes to the stars 🌟 (aka your git repo):**

   ```bash
   dotfiles push origin main
   ```

## 🌌 Final Thoughts

Remember, the universe is vast, and configurations are ever-changing. Keep exploring, and keep updating this digital spaceship! And if you meet another galactic traveler, share your knowledge!

Safe travels, Future Me! 🚀
