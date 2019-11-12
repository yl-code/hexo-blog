# mac 安装 hexo next
> 
 ### 安装 hexo
 npm install -g hexo-cli


 ### 搜索插件
 npm install hexo-generator-searchdb --save


 ### 字数统计插件
 npm install hexo-wordcount --save

 ### 部署到 GitHub 的插件
 npm install hexo-deployer-git --save

 ### 清除缓存
 hexo clean

 ### 产生静态网页
 hexo g

 ### 部署到GitHub page上
 hexo d

 ### 新建文章
 hexo new '文章标题'
 hexo clean && hexo g && hexo d
