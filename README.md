# 🎧 BabelEQ for [EasyEffects](https://easyeffects.org/)


![Vieta Pro Optimized](https://img.shields.io/badge/Vieta%20Pro-EQ%20Optimized-0070f3?style=for-the-badge&logo=headphones&logoColor=white)

[![EasyEffects](https://img.shields.io/badge/Uses-EasyEffects-blue?style=flat-square)](https://easyeffects.org/)


**Custom audio presets for Linux designed to help you hear foreign languages like a native.**

When learning a new language, your ears are often your biggest hurdle. Every language has its own "frequency footprint"—for example, French relies heavily on high-frequency sounds (like *je*, *ch*, *s*) and subtle nasal vowels that don't naturally exist in Spanish. Furthermore, modern Bluetooth speakers often artificially boost bass, muddying these crucial frequencies.

These EasyEffects presets automatically adjust your system's audio to cut through the hardware mud and highlight the exact frequencies your ears need to decode your target language.

## 🛠 Prerequisites (Debian / Ubuntu)

[![EasyEffects](https://img.shields.io/badge/Uses-EasyEffects-blue?style=flat-square)](https://easyeffects.org/)

These presets require **EasyEffects v7.2.3** or newer. 

EasyEffects relies on specific audio plugins to render the equalizer correctly. If you install EasyEffects without its backend plugins, the app will open and load the preset, but the audio will not actually change.

Open your terminal and install EasyEffects along with the required Linux Studio Plugins (LSP) and PipeWire backend:

```bash
sudo apt update
sudo apt install easyeffects pipewire wireplumber lsp-plugins
```

## 🚀 Installation

You can install the presets automatically using the included script. It will copy the files into the hidden EasyEffects configuration folder on your system.

1. Open your terminal in the downloaded project folder.
2. Run the following commands:

```bash
chmod +x scripts/install_presets.sh
./scripts/install_presets.sh
```

## 🎧 How to Use

1. Open the **EasyEffects** application on your Linux desktop.
2. At the top of the window, ensure you are on the **Output** tab.
3. Click the **Presets** button in the top left corner.
4. Select your language pairing from the list (e.g., `fr-es_vieta-upper3`) and click **Load**.
5. *Tip: Make sure the EasyEffects global switch (top left corner) is toggled to ON so it actively processes your audio.*

## 📂 Which file do I choose?

Presets are named so you can instantly find the right one for your native language, target language, and speaker hardware. 

**Format:** `[target]-[native]_[hardware].json`

**Example:** `fr-es_vieta-upper3.json`
* **fr** = Target Language (French)
* **es** = Native Language (Spanish)
* **vieta-upper3** = Tuned specifically for the Vieta Pro Upper 3 Bluetooth speaker's hardware profile.
* **laptop** = Tuned for Piezoelectric speakers sucha laptops, small sound systems etc 


## License

Apache License 2.0.

2026 SolYNaranjaS