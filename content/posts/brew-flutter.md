---
title: "使用 Homebrew 安裝 Flutter"
date: 2022-01-18T18:30:14+08:00
tags: 
  - note
  - flutter
  - homebrew
---

 安裝相關SDK及Flutter主程式(可直接至Flutter官方下載最新SDK安裝)

    brew install --cask android-studio

    brew install --cask android-SDK

    brew install --cask android-ndk

    brew install --cask flutter

 設定flutter預設執行路徑，編輯 ~/.bash_profile 內容 (flutter可執行，則可略過這一步驟)

    export PATH={flutter目錄路徑}/flutter/bin:$PATH

 執行flutter環境並同意授權使用
  
    flutter doctor --android-license

 設定xcode命令工具

    sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer/

 同意 xcodebuild 的使用授權

    sudo xcodebuild -license

 設定 ios 模擬器

    open -a Simulator

 建立專案

    flutter create {project name}

 佈署至ios的裝置

    brew update
    brew install --HEAD libimobiledevice
    brew install ideviceinstaller ios-deploy cocoapods
    pod setup

 設定Android相關設定

    flutter config --android-SDK

 啟動Flutter

    flutter run


