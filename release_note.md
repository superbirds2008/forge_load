# 使用说明
1. 下载目标环境的可执行文件
2. 将可执行文件放到目标环境的目录下
3. 设置可执行文件的权限
```shell
chmod +x ./<可执行文件名>
chmod +x ./install.sh
```
4. 测试运行（无环境变量设置时默认关闭调试模式，CPU占用率目标为55%）
```shell
debug=1 target=50 ./soss-monitor-<os>-<arch>.bin
```
上述命令打开调式模式输出CPU实时占用率，target=50表示CPU的占用率目标
5. 安装服务
```shell
./install.sh
```
6. 查看服务状态
```shell
systemctl status soss-monitor
```
