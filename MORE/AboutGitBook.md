## AboutGitBook

### 安装
```sh
sudo npm install -g gitbook-cli
```

### 基本命令
```sh
gitbook init 初始化仓库, 可以根据SUMMARY.md的内容自行生成目录
gitbook build 可以不设置输出路径, 默认保存在_book目录下
gitbook install 根据book.json下载配置插件  
```

### gitbook配置
- [我的配置](https://github.com/Magicwangs/PaperRead)  

### 同步coding和github
- coding page只支持  master和coding-pages的分支启动 coding page服务
- github 默认支持 gh-pages 开启github page 服务
- 每次新建一个branch, 需要新建 .gitignore, 防止 _book 被更新到 git 中,这样 _book就成为一个与各个分支都不相关的目录, 不会git checkout的过程中丢失    
- 各分支建立后, 同步脚本如下  
```sh
gitbook build
git checkout master
git add .
git commit -m $1
git push -u both master
git checkout gh-pages
cp -r _book/* .
git add .
git commit -m $1
git push -u origin gh-pages
git checkout coding-pages
cp -r _book/* .
git add .
git commit -m $1
git push -u coding coding-pages
git checkout master
```

### 修改主题
```sh
可以直接修改 主题的css  
vim node_modules/gitbook-plugin-theme-comscore/book/test.css
```

### Reference
- [Publish GitBook to Your GitHub Pages](http://sangsoonam.github.io/2016/08/02/publish-gitbook-to-your-github-pages.html)