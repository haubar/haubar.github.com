---
title: "Redis 資料結構筆記"
date: 2024-05-14T12:30:14+08:00
tags: 
  - note
  - redis
---

Redis主要以key/value方式儲存資料，資料型態的種類有7種，常使用的有5種

## String

    最基礎的資料型態，可存字串、數字等   

## List

    由多個String組成，有順序，會依插入的順序儲存，可用來做任務隊列

## Set
    
    無順序，並不會有重覆內容

## Hash

    key/value的結構資料

## Sort Set (Zset)

    相當於有順序的Set，多了score(權重)做排序


