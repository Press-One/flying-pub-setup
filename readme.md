## 飞帖是什么？为什么会有飞帖这个产品？

先介绍一个基于区块链的架构：使用区块链作为消息总线，让不同的应用之间通过这个统一的消息系统来交互，实现内容的发布和订阅。它可以解决互联网应用各自隔离的问题，让不同应用之间沟通更透明，更简单，所有用户发布的数据直接可以在区块链上确权。

![Flying pub architecture](https://static.press.one/blogimgs/image1.png)

飞帖就是基于这个架构搭建出来的应用，它已经是真实运行、每天有很多用户在使用着的产品，同时也是作为演示这个架构的例子和模板，可供大家直接使用，或者魔改源码制定自己的版本。

目前在线上运行的飞帖站点：

- [PRESS.one 官方博客](https://blog.prsdev.club)
- [PRESS.one 官方站点](https://prs.prsdev.club)
- [XUE.cn 自学编程](https://xue.prsdev.club)
- [定投践行群（私密）](https://read.firesbox.com)

更多介绍可以阅读 PRESS.one 官方发布的《[2020 我们如何看待…](https://blog.prsdev.club/posts/4be956dbbe269a3c0d75e6ade3b2436d162d390a9aa856a19f23ff91946dfcdf)》

## 开始

### 安装

启动项目之前，你需要安装 Docker

- [Docker 下载（Mac）](https://docs.docker.com/docker-for-mac/install/)
- [Docker 下载（Windows）](https://docs.docker.com/docker-for-windows/install/)

### 生成配置

运行向导程序，根据提示注册两个 Mixin App 即可生成配置文件

```
  ./scripts/generate_config_prod.sh
```

### 启动

./scripts/start_prod.sh

项目启动完毕，你可以访问以下服务：

- 写作站：[http://localhost:8000](http://localhost:8000)
- 阅读站：[http://localhost:9000](http://localhost:9000)

你可以测试这些功能：

1. 在写作站登录，然后发布一篇文章
2. 在阅读站查看文章（抓取文章可能需要一点时间）
3. 在阅读站登录之后，给文章点赞、评论、打赏
4. 回到写作站，在钱包中查看读者打赏收入和流水
5. 恭喜你，你已经成功运行了飞帖的核心功能

### 定制自己的站点

你可以通过修改配置文件，然后生成你自己的飞帖站点，配置文件在根目录的 `config` 文件夹中

- 写作站配置文件：config.pub.js
- 阅读站配置文件：config.reader.js

配置文件里面都有注释说明，和产品相关的配置集中在 `settings` 中，你主要修改这里的配置即可

修改完配置之后，如何让修改生效？重启对应的服务

重启写作站

./scripts/restart_pub.sh

重启阅读站：

./scripts/restart_reader.sh

## 想要修改源码或者贡献代码？

三大模块仓库列表：

- 写作站（pub）
- 阅读站（reader）
- 同步服务（atom）

## 遇到问题？

反馈渠道：[gitter 聊天室](https://gitter.im/flying-pub/community)或者 Issue
