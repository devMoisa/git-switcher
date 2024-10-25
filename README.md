# gitswitch

A simple automation tool for quickly switching between Git profiles. This script allows you to easily change your global Git configuration to different predefined profiles.

## Installation

1. **Clone the repository or download the script:**

   ```bash
   git clone https://github.com/devMoisa/git-switcher.git
   ```

2. **Move the script to the `~/.config/git-scripts` directory:**

   ```bash
   mkdir -p ~/.config/git-scripts
   mv gitswitch ~/.config/git-scripts/gitswitch
   ```

3. **Make the script executable:**

   ```bash
   chmod +x ~/.config/git-scripts/gitswitch
   ```

4. **Add an alias to your shell configuration file (`~/.bashrc`, `~/.zshrc`, etc.):**

   ```bash
   echo 'alias gitswitch="~/.config/git-scripts/gitswitch"' >> ~/.bashrc
   # For Zsh users, use ~/.zshrc instead of ~/.bashrc
   source ~/.bashrc  # Or source ~/.zshrc for Zsh
   ```

Now you can use the command `gitswitch` to switch between Git profiles.

## Usage

To switch between different Git profiles, use the following command:

```bash
gitswitch --set [profile_name]
```

For example:

```bash
gitswitch --set profile01
gitswitch --set profile02
```

## Configuration

To set up different Git profiles, create configuration files in your home directory. For example:

- `~/.gitconfig_profile01`
- `~/.gitconfig_profile02`

Each file should contain the Git configuration for that specific profile. For example:

```ini
# ~/.gitconfig_profile01
[user]
    name = Moisés Profile 01
    email = moises01@example.com

[core]
    editor = vim
```

```ini
# ~/.gitconfig_profile02
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
gitswitch --set profile01
```

Output:

```
Switched to profile 01.
```

To switch to the second profile:

```bash
gitswitch --set profile02
```

Output:

```
Switched to profile 02.
```

## License

This project is licensed under the MIT License.
