---
title: 配置GitHub的Actions功能遇到的那些坑
comments: true
copyright: true
tags: GitHub
top: 1
abbrlink: ead6f52e
---
如果你也在配置GitHub的Actions功能，让自己的代码部署方便，并在配置的过程中遇到一些  
一些bug，希望这篇文章可以帮到你
<!--more-->
# 配置actions时遇到的那些bug
我使用的是大牛jamesives的.yml配置文件，链接会放在博文的最后
1.  463 Error: fatal: No url found for submodule path '.deploy_git' in .gitmodules464 Error: The process "/usr/bin/git' failed with exit code 128
导致这个错误的原因是，你在新建分支时，最后打包提交的产物不在你的new branch上，而是在你的master分支上，导致目录结构错误，提示找不到 No url found 'xxx' 在子模块中，所以在你上传打包时，一定仔细检查好你的目录结构
2.  Process completed with exit code 1. 进程完成，错误代码 1.这个bug暂时为解决，仔细观察了一下错误提示信息，是npm是找不到资源报的错，当时以为是.yml文件迭代了,上网又copy了最新的内容,最后运行还是出错,目前暂未解决···
3.  最后，如果你也是要自动化部署你的博客文章与内容，那么https://www.npmjs.com/package/@jamesives/github-pages-deploy-action  
是你最好的选择。