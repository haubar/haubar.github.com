---
title: "Laravel orm 用法整理"
date: 2022-06-10T18:30:14+08:00
tags: 
  - note
  - laravel
  - model
---

#### 整理一些特殊的用法....
 
  - find
  > 指定欄位
  
    $example::find( 666, ['note', 'laravel']);

  - replicate
  > 複製一個model
  
    $example = Example:find(666);
    $new_example = $example->replicate;
    $new_example->save();

  - is
  > 判斷model是否相同
    
    $example = Example::find(666);
    $first_example = Example::find(666);
    $second_example = Example::find(777*Ｓ
    $example->is($first_example); 
    //結果會是true
    $example->is($second_example); 
    //結果會是false

  - refresh
  > 重新載入model

    $example = Example::find(666);    
    $example->refresh();
    // 更新最新的model資料

  - push
  > 更新關聯的model資料

    $example = Example::find(666);
    $example->title = "第一則";
    $example->article->title = '更改文章標題';
    $example->save(); 
    // 只更新 example 的 title
    $example->push(); 
    // 更新 example 與 article 的title

  - getChanges
  > 查詢更改的資料

    $example = Example::find(666);
    $example->title; 
    // 原始文章標題
    $example->title = '新的文章標題';
    $example->save();
    $example->getChanges());
    // [ 'title' => '原始文章標題' ]

  - getDirty
  - isDirty
  > 查詢model是否有被更動

    $example = Example::find(666);
    $example->getDirty();  
    // []
    $example->isDirty();        
    // false 
    $example->title = '更改後的新標題';   
    $example->isDirty();        
    // true
    $example->getDirty();      
     // [ 'title' => '更改後的新標題']
    $example->save();           
    $example->isDirty();        
    // false

  - getOriginal
  > 查詢修改前的model資料

    $example = Example::find(666);
    $example->title;                   
    //未更改的原標題
    $example->title = "改過後的標題";         
    //改過後的標題
    $example->getOriginal('title');    
    //未更改的原標題
    $example->getOriginal();          
    //顯示未更改前的資料




