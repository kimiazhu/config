---

Copyright 2020, Tencent Inc.  
All rights reserved.  

- Description: README  
- Author: ZHU HAIHUA <kczhu@tencent.com>  
- Since: 2020-01-19 21:23  
- Version: v0.1  

---
 
# iterm2使用说明


1. mac安装lrzsz:

```
brew install lrzsz
```

2. iterm2 配置

找到iTerm2的配置项：iTerm2的Preferences-> Profiles -> Default -> Advanced -> Triggers的Edit按钮。

然后配置项如下：

| Regular Expression             |  Action              |  Parameters                                      |  Instant |
| -----------------------------  | -------------------- | ------------------------------------------------ | -------- |
|rz waiting to receive.\*\*B0100 | Run Silent Coprocess | ~/Development/config/lrzsz/iterm2-send-zmodem.sh | checked |
|\*\*B00000000000000             | Run Silent Coprocess | ~/Development/config/lrzsz/iterm2-recv-zmodem.sh | checked |

3. 服务端安装：

```
yum -y install lrzsz
```
