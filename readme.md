## 飞帖是什么？

先介绍一个基于区块链的架构：使用区块链作为消息总线，让不同的应用之间通过这个统一的消息系统来交互，实现内容的发布和订阅。它可以解决互联网应用各自隔离的问题，让不同应用之间沟通更透明，更简单，所有用户发布的数据直接可以在区块链上确权。

![Flying pub architecture](https://xue-images.pek3b.qingstor.com/213-flying-pub-art.png)

飞帖就是基于这个架构搭建出来的应用，它已经是真实运行、每天有很多用户在使用着的产品，同时也是作为演示这个架构的例子和模板，可供大家直接使用，或者魔改源码制定自己的版本。

飞帖具体有什么功能呢？请看这篇《[飞帖图文介绍](https://prs.prsdev.club/posts/a2a59fa361d98ceb5dd20c10fa1da43aec0ff33251875b434111a0c464bbee75)》

目前在线上运行的飞帖站点：

- [PRESS.one 官方博客](https://blog.prsdev.club)
- [PRESS.one 官方站点](https://prs.prsdev.club)
- [XUE.cn 自学编程](https://xue.prsdev.club)
- [定投践行群（私密）](https://read.firesbox.com)

更多介绍可以阅读 PRESS.one 官方发布的《[2020 我们如何看待…](https://blog.prsdev.club/posts/4be956dbbe269a3c0d75e6ade3b2436d162d390a9aa856a19f23ff91946dfcdf)》

## 开始

### 环境准备

你需要安装 Docker

- 如果你使用 Mac，下载 [Docker 客户端（Mac）](https://docs.docker.com/docker-for-mac/install/)
- 如果你使用 Windows，下载 [Docker 客户端（Windows）](https://docs.docker.com/docker-for-windows/install/)
- 如果你使用 Linux，根据这个[向导](https://docs.docker.com/compose/install/)来安装 Docker

克隆这个项目： `git clone https://github.com/Press-One/flying-pub.git`

### 生成配置

进入 `flying-pub` 仓库

```
cd flying-pub
```

运行向导程序，根据提示注册两个 Mixin App 即可生成配置文件

```
./scripts/generate_config_prod.sh
```

（备注：在启动向导程序时，需要花一点时间初始化环境，估计耗时 5 分钟，完成之后才会进入向导程序）

### 启动

```
./scripts/start_prod.sh
```

（备注：这个过程需要花些时间，估计耗时 15 分钟，你可以先去干点其他事情）

项目启动完毕，你可以访问以下服务（首次启动需要等 1-2 分钟才能访问）：

- 写作站：[http://localhost:8000](http://localhost:8000)
- 阅读站：[http://localhost:9000](http://localhost:9000)

你可以测试这些功能：

1. 在写作站登录，然后发布一篇文章
2. 在阅读站查看文章（抓取文章可能需要一点时间）
3. 在阅读站登录之后，给文章点赞、评论、打赏
4. 回到写作站，在钱包中查看读者打赏收入和流水
5. 🎉🎉 恭喜你，你已经成功运行了飞帖的核心功能

### 定制你自己的站点

你可以通过修改配置文件，然后生成你自己的飞帖站点，配置文件在根目录的 `config` 文件夹中

- 写作站配置文件：`config.pub.js`
- 阅读站配置文件：`config.reader.js`

配置文件里面都有注释说明，和产品相关的配置集中在 `settings` 中，你主要修改这里的配置即可

修改完配置之后，重启对应的服务，让修改生效

重启写作站

```
./scripts/restart_pub.sh
```

重启阅读站：

```
./scripts/restart_reader.sh
```

## 想要修改源码或者贡献代码？

三大模块仓库列表：

- [写作站（pub）](https://github.com/Press-One/pub)
- [阅读站（reader）](https://github.com/Press-One/reader)
- [同步服务（atom）](https://github.com/Press-One/atom)

## 遇到问题或者反馈建议？

沟通渠道：[gitter 聊天室](https://gitter.im/flying-pub/community)或者 [Issues](https://github.com/Press-One/flying-pub/issues)
