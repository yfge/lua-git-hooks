# lua-git-hooks
一个简易的 git 构子
## 要求
安装 luacheck 
## 安装
进入你的 git 源码目录，执行
```bash 
bash -c "$(curl https://raw.githubusercontent.com/yfge/lua-git-hooks/master/install.sh)"
```
即可使用.

## 配置
1. .luacheckrc 的配置参见 luacheck 的说明
2. luacheck 中有一些警告，如果需要作为错误处理(禁止提交)的话,修改.git/hooks/pre-commit 即可


