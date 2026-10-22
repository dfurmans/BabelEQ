## Requirements & Dependencies (Debian / Ubuntu)
This preset is optimized and tested for **EasyEffects v7.2.3+**. 

EasyEffects relies on PipeWire and specific audio plugins to render the EQ and Limiter effects. Without the correct backend plugins installed, the preset will load but the audio will not change.

### 1. Install EasyEffects and Required Plugins
Open your terminal and install EasyEffects along with the required Linux Studio Plugins (LSP) and PipeWire backend directly via APT:

```bash
sudo apt update
sudo apt install easyeffects pipewire wireplumber lsp-plugins
```
