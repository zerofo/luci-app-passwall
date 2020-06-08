# passwall plus +

[预编译ipk](https://github.com/yiguihai/luci-app-passwall/releases)

将以前写的[fuckgfw](https://github.com/yiguihai/fuckgfw)脚本改写为luci界面控制了，自用
先编译好po2lmo然后使用其将po汉化文件转换为lmo再编译就可以使用了

[transocks-wong](https://github.com/GameXG/TcpRoute2)，透明代理   
[TcpRoute2](https://github.com/GameXG/TcpRoute2) 代理核心   
[SmartDNS](https://github.com/pymumu/smartdns) 防止dns污染  

将编译文件分别命名为 transocks-wong TcpRoute2 smartdns 移动到/usr/bin目录并授予执行权限，再安装ipk

提供1053端口防止dns污染。可作为dnsmasq上游，主要是针对运营商返回 127.0.0.1 的污染，如 rfa.org jav321.com 还有域名黑名单等功能


### 展示图
<img src="https://github.com/yiguihai/luci-app-passwall/raw/master/view/1.png" alt="展示图" title="查看图片" />
<img src="https://github.com/yiguihai/luci-app-passwall/raw/master/view/2.png" alt="展示图" title="查看图片" />
