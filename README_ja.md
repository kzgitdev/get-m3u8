# get-m3u8-to-mp4.sh とは？

## 概要
Youtubeのライブ配信の保存をしたいときに使えるシェルスクリプトです。

##  目的
保存したいYoutubeのライブ配信は、番組URLからm3u8ファイルを取得する必要があります。

この手間を減らすために、シェルスクリプトに下記の引数を与えます。  
1 . 番組のURL  
2. 保存ファイル名  

## 使い方
./get-m3u8-to-mp4.sh URL OUTPUT

URL は、番組のURL
OUTPUT は、保存したいファイル名
を書きます。

## 事前準備
このシェルスクリプトを使うためには下記のパッケージが必要になります。
- ffpmeg
- youtbe-dl

## 開発環境
- Ubuntu 20.04 LTS
- ffmpeg version 4.2.4-1ubuntu0.1
- youtube-dl 2021.02.04.1
