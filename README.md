# Extracting Assets from Minecraft Java

Oftentimes, you'll want assets from Minecraft, for things from a texture pack to a custom voxel editor for Minecraft.
This tutorial teaches you how to extract files for things like vanilla texture packs, models, particles, shaders, advancements,  font, block states, text for the different languages, and much much more directly from your Minecraft install's `.jar` file

First, you'll want to go to the Minecraft directory for your OS (You'll want an install of Minecraft for this):
| OS |	Location |
| -- | -------- |
| Windows |	%APPDATA%\.minecraft |
| macOS |	~/Library/Application Support/minecraft |
| Linux |	~/.minecraft |

Then, you'll want to go to the `versions` directory and then into the directory with the name of the version of Minecraft that you want to extract the files from (you should see the `.jar` file) <br/>
If you can't see the version, go to Minecraft and launch the version that you want to extract assets from 

# Linux, MacOS, & WSL (Windows Subsystem for Linux)
Copy [extract-unobfuscated-data.sh](https://github.com/RandomGamingDev/minecraft-asset-extractor/blob/main/extract-unobfuscated-data.sh) into the directory before making it executable:
```sh
chmod +x extract-unobfuscated-data.sh
```
running it (it'll by default export to `extracted-data`, but you can specify another directory in the arguments):
```sh
./extract-unobfuscated-data.sh
```
This will create an output directory that contains all of the Minecraft assets (the data that's removed are just obfuscated `.class` files that we don't need)

# Windows
Since windows doesn't support execution of `.sh` and isn't unix based files you'll want to install WSL (Windows Subsystem for Linux) <br/>
You can run this in powershell in order to install it:
```bat
wsl --install
```
You can learn more about WSL here: https://learn.microsoft.com/en-us/windows/wsl/install

Then, since you'll have WSL installed, you can follow the steps for **Linux, MacOS, & WSL (Windows Subsystem for Linux)**
