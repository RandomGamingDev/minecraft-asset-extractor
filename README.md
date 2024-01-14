# Extracting Assets from Minecraft Java

Oftentimes, you'll want assets from Minecraft, for things from a texture pack to a custom voxel editor for Minecraft.
This tutorial teaches you how to extract files for things like vanilla texture packs, models, particles, shaders, advancements,  font, block states, text for the different languages, and much much more directly from your Minecraft install's `.jar` file

<br/>

## Navigate to the `.jar`

First, you'll want to go to the Minecraft directory for your OS (You'll want an install of Minecraft for this):
| OS |	Location |
| -- | -------- |
| Windows |	%APPDATA%\.minecraft |
| macOS |	~/Library/Application Support/minecraft |
| Linux |	~/.minecraft |

Then, you'll want to go to the `versions` directory and then into the directory with the name of the version of Minecraft that you want to extract the files from (you should see the `.jar` file) <br/>
If you can't see the version, go to Minecraft and launch the version that you want to extract assets from

<br/>

## Linux, MacOS, & WSL (Windows Subsystem for Linux)
Copy [extract-unobfuscated-data.sh](https://github.com/RandomGamingDev/minecraft-asset-extractor/blob/main/extract-unobfuscated-data.sh) into the directory before making it executable:
```sh
chmod +x extract-unobfuscated-data.sh
```
running it (it'll by default export to `extracted-data`, but you can specify another directory in the arguments):
```sh
./extract-unobfuscated-data.sh
```
This will create an output directory that contains all of the Minecraft assets (the data that's removed are just obfuscated `.class` files that we don't need)

<br/>

## Windows
Since windows doesn't support execution of `.sh` and isn't unix based files you'll want to install WSL (Windows Subsystem for Linux) <br/>
You can run this in powershell in order to install it:
```bat
wsl --install
```
You can learn more about WSL here: https://learn.microsoft.com/en-us/windows/wsl/install

Then, since you'll have WSL installed, you can follow the steps for **Linux, MacOS, & WSL (Windows Subsystem for Linux)** with WSL by navigating to the directory and then opening it with WSL

<br/>

## How does [extract-unobfuscated-data.sh](https://github.com/RandomGamingDev/minecraft-asset-extractor/blob/main/extract-unobfuscated-data.sh) work <br/> and <br/> How can I do this without it? (manually)
What [extract-unobfuscated-data.sh](https://github.com/RandomGamingDev/minecraft-asset-extractor/blob/main/extract-unobfuscated-data.sh) does is unzip the `.jar` file and remove all of the unnecessary directories that just contain obfuscated `.class` files.

`.jar`'s are technically just `.zip` files, but with a different extension that signifies that it can be executed with the JVM (Java Virtual Machine) which means that you should be able to unzip it.

If you can't unzip it as is, create a copy (so that you can still play that Minecraft version), but with an extension of `.zip` <br/>
Then, delete all of the `.class` files as well as the `com` & `net` directories, which will leave you with just the extracted data left

I recommend taking this route if you can't run [extract-unobfuscated-data.sh](https://github.com/RandomGamingDev/minecraft-asset-extractor/blob/main/extract-unobfuscated-data.sh) since this is just what it's doing
