---
title: "Git 指令筆記"
date: 2022-01-07T12:30:14+08:00
tags: 
  - note
  - git
---

## GIT 常用指令筆記

查看版本控制檔案狀態
> git status   

加入版本控制的索引裡
> git add {filename} or . {全部}

加入版本名稱
> git commit {commit description}

從遠端拉取更新本地檔案
> git pull {orgain name} {repo name}

提交已建立的版本
> git push {orgain name} {repo name}

查詢版本記錄
> git log

檢查檔案修改哪些部份
> git diff

移除commit的記錄，不會留下commit訊息
> git reset {commit id}

移除前一次commit的版本資料，不會留下commit訊息
> git reset HEAD^

移除commit的版本資料，會留下commit訊息
> git revert HEAD^

移除前一次commit的版本資料，會留下commit訊息
> git revert HEAD^

拉取單一版本，可跨分支拉取
> git cherry-pick {commit id}

切換分支 或 取消未追蹤檔案的修改
> git checkout {branch name} or {file name}

建立分支
> git branch {branch name}

拉取分支過來目前的分支合併，原有的記錄不變
> git merage {branch name}

拉取分支過來目前的分支合併，但記錄會接在合併的分支後
> git rebase {branch name}





