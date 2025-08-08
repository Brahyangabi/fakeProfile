# Vencord DEV Build

> [!NOTE]
> If you don't know how to do manually build of Vencord dev, please choose installer. But there's no guarantee that it'll work properly because Veecord is updating not so fast.

## Sections

-   [Windows](#windows)
-   [Linux](#linux)
-   [Extension](#extension)
-   [Mobile](#mobile)
-   [Final](#final)

## Windows

#### Installer

-   Join to our [Discord server](https://discord.gg/ffmkewQ4R7) and then go to `#install-and-info` for get installer.

### 1. Requirements

-   First of all you need install these things: [Git](https://git-scm.com/downloads), [Node.js](https://nodejs.org/en/download/), [pnpm](https://pnpm.io/installation)
-   Make sure that all of them are added to your PATH, you will need it.

-   To verify correct installation, run the following commands. All 3 should print the version of the respective software without errors:

```shell
git --version
node --version
pnpm --version
```

-   Now cloning repository in a convenient folder which you can remember to go in:

```shell
cd Documents
```

```shell
git clone https://github.com/Equicord/Equicord.git
cd Equicord
```

> [!NOTE]
> If you preferring Vencord's dev build, you can use `https://github.com/Vendicated/Vencord.git` link, but you need fix CSP issue for fakeProfile plugin.

### 2. Installing Dependencies

-   Now for installing dependencies we using `pnpm` package manager, follow this command to install it:

```shell
pnpm install --frozen-lockfile
```

-   Vencord/Equicord might add, remove or update dependencies at any time. Thus, you might receive errors like Cannot find package "foobar" imported from ... after updating. _If this happens, you should run the same command once again to update the installed dependencies._

### 3. Install Plugin & Building

-   First of all make sure that you had followed steps in `Requirements` paragraph.

-   Then you need clone repository in path `src/userplugins/`(it's highly recommended because you need also update your Equicord build with command `git pull`, it's preventing changes in `src/plugins`, `src/equicordplugins` folder) using this repository url: `https://github.com/TheLumiDevs/fakeProfile.git`.

-   And after cloning and installing dependencies you need do `pnpm build`.

### How to update fakeProfile plugin?

-   Go to `Equicord/` in adress bar type **cmd**, enter and type in Command Shell this:

```shell
git pull
```

```shell
pnpm i # Devs of Vencord/Equicord may have changed some dependencies, so do it to not get broken Equicord. :)
```

-   Then type:

```shell
pnpm build
```

-   If you're not using [Equibop](https://github.com/Equicord/Equibop) then use this command to inject Equicord:

```shell
pnpm inject
```

-   Restart your Discord client(If you're not using [Equibop](https://github.com/Equicord/Equibop)) and enjoy.

-   That all.

## Linux

### By command

-   You can install fakeProfile and Vencord DEV Build in one command below:

```shell
curl -o- 'https://raw.githubusercontent.com/TheLumiDevs/fakeProfile/refs/heads/main/assets/fpInstaller.sh' | bash
```

### Manually

> [!CAUTION]
> You need install libraries such as `git nodejs npm` for it.

-   You can install fakeProfile and Vencord DEV Build by these command manually:

```shell
git clone https://github.com/Equicord/Equicord.git
cd Equicord/ && sudo npm i -g pnpm && pnpm i
cd src/ && mkdir userplugins
cd userplugins/ && git clone https://github.com/TheLumiDevs/fakeProfile.git
pnpm build
sudo pnpm inject # If you use default Discord client, in custom you need set path to dist/
```

-   And after commands you have successfully installed Vencord DEV Build with fakeProfile.

### Updating

-   Same as for Windows, just do this in terminal by path `Equicord/`:

```shell
git pull
```

```shell
pnpm i # Devs of Vencord/Equicord may have changed some dependencies, so do it to not get broken Equicord. :)
```

-   Then type:

```shell
pnpm build
```

-   If you're not using [Equibop](https://github.com/Equicord/Equibop) then use this command to inject vencord:

```shell
sudo pnpm inject
```

-   Restart your Discord client(If you're not using [Equibop](https://github.com/Equicord/Equibop)) and enjoy.

-   That all.

## Extension

-   Join to our [Discord server](https://discord.gg/ffmkewQ4R7) and then go to `#install-and-info` for get extension for your browser.

## Mobile

-   Check this [repository](https://github.com/Discord-Client-Encyclopedia-Management/Discord3rdparties) for checking maintained client for mobile such as Android or iOS.

## Final

-   After installing you can now go to read [tutorial](tutorial.md) how to use fakeProfile.
