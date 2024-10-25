# gitswitcher

A simple automation tool for quickly switching between Git profiles. This script allows you to easily change your global Git configuration to different predefined profiles.

## Installation

1. **Clone the repository or download the script:**

   ```bash
   git clone https://github.com/devMoisa/git-switcher.git
   ```

2. **Move the script to the `~/.config/gitswitcher` directory:**

   ```bash
   mkdir -p ~/.config/gitswitcher
   mv gitswitcher.sh ~/.config/gitswitcher/gitswitcher.sh
   ```

3. **Make the script executable:**

   ```bash
   chmod +x ~/.config/gitswitcher/script.sh
   ```

4. **Add an alias to your shell configuration file (`~/.bashrc`, `~/.zshrc`, etc.):**

   ```bash
   echo 'alias gitswitcher="~/.config/gitswitcher/script.sh"' >> ~/.bashrc
   # For Zsh users, use ~/.zshrc instead of ~/.bashrc
   source ~/.bashrc  # Or source ~/.zshrc for Zsh
   ```

Now you can use the command `gitswitcher` to switch between Git profiles.

## Usage

To switch between different Git profiles, use the following command:

```bash
gitswitcher --set [profile_name]
```

For example:

```bash
gitswitcher --set profile01
gitswitcher --set profile02
```

## Configuration

To set up different Git profiles, create configuration files in the `~/.config/gitswitcher` directory. For example:

- `~/.config/gitswitcher/profile01.sh`
- `~/.config/gitswitcher/profile02.sh`

Each file should contain the Git configuration for that specific profile. For example:

```ini
# ~/.config/gitswitcher/profile01.sh
[user]
    name = Moisés Profile 01
    email = moises01@example.com

[core]
    editor = vim
```

```ini
# ~/.config/gitswitcher/profile02.sh
[user]
    name = Moisés Profile 02
    email = moises02@example.com

[core]
    editor = nano
```

The script will copy the selected profile to your global `.gitconfig` file, effectively switching to the specified profile.

## Example

To switch to the first profile:

```bash
gitswitcher --set profile01
```

Output:

```
Switched to profile 01.
```

To switch to the second profile:

```bash
gitswitcher --set profile02
```

Output:

```
Switched to profile 02.
```

## License

This project is licensed under the MIT License.
