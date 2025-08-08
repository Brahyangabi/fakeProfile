#!/bin/sh

VENCORD_DIRECTORY='Equicord/'
VENCORD_URL='https://github.com/Equicord/Equicord.git'
FAKEPROFILE_URL='https://github.com/TheLumiDevs/fakeProfile.git'
DISTRIB="$(python3 -c "import platform;print(platform.uname().node)")" #echo "Distribution: $DISTRIB" | And $DISTRIB is only working for linux :)

customClients() {
    echo "INFO: Equicord build was done, now you need manually do 'pnpm inject' command if you don't have Equibop desktop client."
    echo "INFO: If you have Equibop desktop client: Settings -> Scroll down to end for 'Developer Options -> Open Developer Settings -> Choose dist from your Equicord build -> Reload fully Equibop to append changes"
}

vencordInstall() {
    git clone $VENCORD_URL
    cd $VENCORD_DIRECTORY && pnpm i
    cd src/ && mkdir userplugins
    cd userplugins/ && git clone $FAKEPROFILE_URL && pnpm build
    customClients
}

EXIST_DIR=""
for dir in \
    "$VENCORD_DIRECTORY"
do
    if ! [ -d "$dir" ]; then
        EXIST_DIR="null"
    else
        EXIST_DIR="$dir"
        break
    fi
done

if [ -d "$EXIST_DIR" ]; then
    echo "WARN: You have already installed Equicord, checking for updating..."
    cd $EXIST_DIR && git pull
    pnpm i
    pnpm build;
else
    vencordInstall
fi