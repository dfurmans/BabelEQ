## Requirements & Dependencies (Debian / Ubuntu)
This preset is optimized and tested for **EasyEffects v7.2.3**. 

EasyEffects relies on PipeWire and specific audio plugins to render the EQ and Limiter effects. Without the correct backend plugins installed, the preset will load but the audio will not change.

### 1. Install Required Plugins
Open your terminal and install the required Linux Studio Plugins (LSP) which EasyEffects uses for the Equalizer and Limiter:
\`\`\`bash
sudo apt update
sudo apt install pipewire wireplumber lsp-plugins
\`\`\`

### 2. Install EasyEffects (v7.2.3+)
Because Debian Stable often carries older versions of EasyEffects in its standard repositories, the most reliable way to get version 7.2.3+ is via Flatpak:
\`\`\`bash
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.github.wwmm.easyeffects
\`\`\`
