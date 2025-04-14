# 🎨 Hyprland Desktop Configuration

A modern and customized desktop environment configuration using Hyprland Wayland compositor.

## ✨ Features

- 🖥️ **Hyprland** - A dynamic tiling Wayland compositor
- 🎯 **Waybar** - Highly customizable status bar
- 🚀 **Rofi** - Application launcher with custom themes
- 🔧 **Kitty** - Modern terminal emulator
- 🎨 **Custom Theme** - Tokyo Night inspired color scheme
- 📁 **Thunar** - File manager with custom actions
- 🖼️ **Fastfetch** - System information display
- 🐚 **ZSH** - Feature-rich shell configuration

## 📦 Components

- Window Manager: Hyprland
- Status Bar: Waybar
- Terminal: Kitty
- Application Launcher: Rofi with multiple themes
  - Catppuccin Macchiato
  - Nord (One-line and Two-line variants)
  - Launchpad style
- File Manager: Thunar with custom actions
- Shell: ZSH with custom configurations
- Fonts: JetBrainsMono Nerd Font
- System Fetch: Fastfetch with custom config
- GRUB Themes: Hatsune Miku theme included
- Custom Cursor: Furina-v2

## 🛠️ Installation

1. Clone this repository:
```bash
git clone https://github.com/biglexj/HYRP-dotfiles.git
```

2. Copy configuration files:
```bash
cp -r HYRP-dotfiles/config/* ~/.config/
```

3. Install themes (optional):
```bash
# Copy GRUB theme
sudo cp -r Theme/Grub/Hatsune\ Miku\ -\ Theme\ Grub /boot/grub/themes/

# Copy cursor theme
cp -r Theme/Cursor/Furina-v2 ~/.icons/
```

## 📸 Screenshots

[Add your screenshots here]

## ⚙️ Configuration

The main configuration files can be found in:
- `waybar/` - Status bar configuration
- `config/hypr/` - Hyprland configuration
- `config/rofi/` - Application launcher theme
- `config/kitty/` - Terminal configuration

## 🎨 Color Scheme

The configuration uses a custom color scheme based on Tokyo Night theme:
- Background: `#1A1B26`
- Accent: `#7aa2f7`
- Text: `#a9b1d6`

## 📝 License

[Add your license information here]
