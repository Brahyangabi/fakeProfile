# Vencord DEV Build
> [!NOTE]
> If you don't know how to do manually build of Vencord dev, please choose installer. But there's no guarantee that it'll work properly because Veecord is updating not so fast.
## Windows
#### Installer
- Join to our [Discord server](https://discord.gg/ffmkewQ4R7) and then go to `#install-and-info` for get installer.

### 1. Requirements

- First of all you need install these things: [Git](https://git-scm.com/downloads), [Node.js](https://nodejs.org/en/download/), [pnpm](https://pnpm.io/installation)
- Make sure that all of them are added to your PATH, you will need it.

- To verify correct installation, run the following commands. All 3 should print the version of the respective software without errors:

```shell
git --version
node --version
pnpm --version
```

- Now cloning repository in a convenient folder which you can remember to go in:
```shell
cd Documents
```
```shell
git clone https://github.com/Vendicated/Vencord
cd Vencord
```

2. Installing Dependencies

- Now for installing dependencies we using `pnpm` package manager, follow this command to install it:
```shell
pnpm install --frozen-lockfile
```

- Vencord might add, remove or update dependencies at any time. Thus, you might receive errors like Cannot find package "foobar" imported from ... after updating. *If this happens, you should run the same command once again to update the installed dependencies.*

### 3. Install Plugin & Building

- First of all make sure that you had followed steps in `Requirements` paragraph.

- Then you need clone repository in path `src/userplugins/`(it's highly recommended because you need also update your Vencord build with command `git pull`, it's preventing changes in `src/plugins` folder) using this repository url: `https://github.com/TheLumiDevs/fakeProfile.git`.

- And after cloning and installing dependencies you need do `pnpm build`.

### 4. How to update fakeProfile plugin?

- Go to `Vencord/` in adress bar type **cmd**, enter and type in Command Shell this:

```shell
git pull
```

```shell
pnpm i # Devs of Vencord may have changed some dependencies, so do it to not get broken Vencordsw. :)
```

- Then type:

```shell
pnpm build
```

- If you're not using Vesktop then use this command to inject vencord:
```shell
pnpm inject
```
- Restart your Discord client(If you're not using Vesktop) and enjoy.

- That all.

## Linux

### By command
- You can install fakeProfile and Vencord DEV Build in one command below:
```shell
curl -o- 'https://raw.githubusercontent.com/ExtbhiteEAS/fakeProfile/refs/heads/main/assets/fpInstaller.sh' | bash
```

### Manually
> [!CAUTION]
> You need install libraries such as `git nodejs npm` for it.

- You can install fakeProfile and Vencord DEV Build by these command manually:
```shell
git clone https://github.com/gujarathisampath/VeeeCord.git
cd VeeeCord/ && sudo npm i -g pnpm && pnpm i
cd src/ && mkdir userplugins
cd userplugins/ && git clone https://github.com/gujarathisampath/fakeProfile.git && pnpm build
sudo pnpm inject # If you use default Discord client, in custom you need set path to dist/
```
- And after commands you have successfully installed Vencord DEV Build with fakeProfile, but you need to start it manually by `pnpm start`.

### Updating
- Same as for Windows, just do this in terminal by path `VeeeCord/`:
```shell
git pull
```

```shell
pnpm i # Devs of Vencord may have changed some dependencies, so do it to not get broken VeeeCord. :)
```

- Then type:

```shell
pnpm build
```

- If you're not using Vesktop then use this command to inject vencord:
```shell
sudo pnpm inject
```
- Restart your Discord client(If you're not using Vesktop) and enjoy.

- That all.

## Extension
- Join to our [Discord server](https://discord.gg/ffmkewQ4R7) and then go to `#install-and-info` for get extension for your browser.

## Bunny (Pyoncord)

> [!NOTE]
> Since of 04/29/2025, Bunny stopped being supported and not working. There was a url for Bunny but it's broken now. Now installation of Android version can be only looked for in Discord server which you can get actual information about it how to install. **Use fork of any Vendetta client.**

## Emnity

> [!NOTE]
> We don't know about this. If you do, please consider to make issue about this.
> Or use clients like Revange or Vetta that have support for iOS.