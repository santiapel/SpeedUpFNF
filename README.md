# SpeedUpFNF
Configurable song speed and activation key for Friday Night Funkin´.
# ⚡ Speed Up Mod

**A simple speed boost mod for Friday Night Funkin' V-Slice.**

Hold **SHIFT** during a song to increase playback speed. Release it to return to normal speed.

## ✨ Features

- ⚡ **Instant speed boost:** Hold `SHIFT` to accelerate songs.
- 🎚️ **Configurable multiplier:** Supports a saved speed multiplier, with a default of `2x`.
- 🎮 **Original interface:** No extra buttons or visual clutter.
- 🔄 **Speed reset:** Attempts to restore normal playback speed when leaving gameplay.
- 🧩 **Lightweight:** A small script-based mod.

## 🎮 Controls

| Action | Key |
|---|---|
| Activate speed boost | Hold `SHIFT` |
| Return to normal speed | Release `SHIFT` |

## 📥 Installation

1. Download the mod files.
2. Extract the `2x` folder into your game's `mods` directory.
3. Make sure the folder structure looks like this:

   ```text
   mods/
   └── 2x/
       ├── _polymod_meta.json
       ├── GlobalSpeedUp.hxc
       └── README.md
   ```

4. Launch Friday Night Funkin'.
5. Enable the mod if your installation requires manual activation.
6. Start a song and hold `SHIFT` to activate the speed boost.

## ⚙️ Configuration

The default speed multiplier is `2x`. The module can read a saved `speedMultiplier` value from the game's mod options when available.

This release does not include a dedicated in-game settings page.

## 📱 Compatibility

Designed for Friday Night Funkin' V-Slice.

- **PC:** Uses the `SHIFT` key.
- **Mobile:** No on-screen activation button is included. Mobile compatibility depends on the game's script support and available keyboard input.

Compatibility should be verified on each supported platform and game version before release.

## 🛠️ Troubleshooting

**The mod does not appear in the game**
- Verify that `_polymod_meta.json` is directly inside the `2x` folder.
- Check that the mod is enabled and that the game recognizes the module.

**SHIFT does not activate the boost**
- Confirm that `GlobalSpeedUp.hxc` is loading successfully.
- Check the game log for script exceptions.

**The game crashes when leaving a menu**
- Check the game log for the first exception associated with `GlobalSpeedUp`.
- Report the error along with your game version.

## 📄 License

This project is distributed under the MIT License.

## ⚠️ Disclaimer

This is a community-made mod and is not affiliated with or endorsed by the developers of Friday Night Funkin'.

Tested compatibility and stability may vary by game version and platform.
