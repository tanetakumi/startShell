#! /bin/bash

# 起動メモリ
MEMORY=5G

# bungee.sh server.sh を置いた場所
HOME=/home/minecraft/main

# download folderの場所
DOWNLOAD=$HOME/download

# 最新版をダウンロードしたときに名前が変わるのものに対しては名前の変化により、見極める。


# BungeeCord ----------------------------------------------------------------
# cp -u $DOWNLOAD/BungeeCord.jar .
# cp -u $DOWNLOAD/Geyser-BungeeCord.jar ./plugins
# cp -u $DOWNLOAD/floodgate-bungee.jar ./plugins
# java -jar -Xms${MEMORY} -Xmx${MEMORY} BungeeCord.jar nogui
# --------------------------------------------------------------------------


# waterfall ----------------------------------------------------------------
# WATERFALL_JAR=`find . -maxdepth 1 -name "waterfall*" -name "*.jar"`
# DOWNLOAD_WATERFALL_JAR=`find $DOWNLOAD -maxdepth 1 -name "waterfall*" -name "*.jar"`

# if [ "${WATERFALL_JAR##*/}" != "${DOWNLOAD_WATERFALL_JAR##*/}" ];then
#     rm $WATERFALL_JAR
#     cp $DOWNLOAD_WATERFALL_JAR .
#     echo "Update"
# else 
#     echo "This waterfall is latest version"
# fi
# JAR=`find . -maxdepth 1 -name "waterfall*" -name "*.jar"`
# java -jar -Xms${MEMORY} -Xmx${MEMORY} ${JAR} nogui
# --------------------------------------------------------------------------


# paper ----------------------------------------------------------------
PAPER_JAR=`find . -maxdepth 1 -name "paper*" -name "*.jar"`
DOWNLOAD_PAPER_JAR=`find $DOWNLOAD -maxdepth 1 -name "paper*" -name "*.jar"`

if [ "${PAPER_JAR##*/}" != "${DOWNLOAD_PAPER_JAR##*/}" ];then
    rm $PAPER_JAR
    cp $DOWNLOAD_PAPER_JAR .
    echo "Update"
else 
    echo "This paper is latest version"
fi
JAR=`find . -maxdepth 1 -name "paper*" -name "*.jar"`
java -jar -Xms${MEMORY} -Xmx${MEMORY} ${JAR} nogui
# --------------------------------------------------------------------------


