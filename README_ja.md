# get-m3u8-to-mp4.sh とは？

## 概要
Youtubeのライブ配信の保存を予約録画したいときに使えるシェルスクリプトです。

##  目的
保存したいYoutubeのライブ配信は、番組URLからm3u8ファイルを取得する必要があります。

この手間を減らすために、シェルスクリプトに下記の引数を与えます。  
1. 番組のURL  
2. 録画時間（分）
3. 保存ファイル名  

## 使い方
./get-m3u8-to-mp4.sh URL DURALTION(minitues) OUTPUT  
例) ./get-m3u8-to-mp4.sh https://www.youtube.com/watch?v=ABCdEfGhijkL 60 output.mp4  
  
または  
  
例） ./get-m3u8-to-mp4.sh https://www.youtube.com/watch?v=ABCdEfGhijkL 60  
出力ファイル名は省略できます。
デフォルトでは、YYYY-MM-DD-ABCdEfGhijkL.mp4 になります。  
ABCdEfGhijkL は Youtube 番組のIDです。  

URL は、番組のURL
DURATION は、録画時間（分）
OUTPUT は、保存したいファイル名
を書きます。

## 事前準備
このシェルスクリプトを使うためには下記のパッケージが必要になります。
- ffmpeg
- youtbe-dl

## 開発環境
- Ubuntu 20.04 LTS
- ffmpeg version 4.2.4-1ubuntu0.1
- youtube-dl 2021.02.04.1
