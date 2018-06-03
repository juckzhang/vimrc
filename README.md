# vimrc
my vim configure

## Usage
```
:vs filename: 左右分屏打开文件
:sp filename: 上下分屏打开文件

/pattern 向后模式匹配
?pattern 向前模式匹配

:%s old/new/g 替换当前文件所有匹配字符

ctrl+f 向上翻页
ctrl+b 向下翻页

% 跳到与当前匹配的括号处
w 跳到下一个字符首短跳
W 跳到下一个字符首长跳
e 跳到下一个字符尾短跳
E 跳到下一个字符尾长跳
b 跳到上一个字符短跳
B 跳到上一个字符长跳
o 跳到行首
^ 跳到行首的第一个字符
$ 跳到行尾
fx 当前行查找字符x 找到则跳转

cc 删除当前行并进入编辑模式
cw 删除当前字进入编辑模式
c$ 删除至行尾进入编辑模式
~ 切换当前字符的大小写
g~iw 切换当前字的大小写
>> 将当前行右移一个tab单位
<< 将当前行左移一个tab党委
== 自动对齐



```

## Config
```
set autoindent: 自动缩进
set tabstop=4: 设置tab为四个空格
set expandtab: 空格代替tab制表符
set nu: 显示行号
```
