# Mebots

该项目主要是对 Webots 的源代码进行分析，并实现一个在 Ubuntu 上能够编译的版本。从源代码的层次对 Webots 软件的操作进行分析。

## 安装依赖文件

所需要的安装文件从 <https://cyberbotics.com/files/repository/dependencies/linux64/release> 下载：-
- 安装 qt：下载 webots-qt-5.11.2-linux64-release.tar.bz2，并将其解压与本 README.md 相同的目录下；
- 安装 opencv：
	- 下载 opencv-linux64.tar.gz
	- 将其解压到 dependencies 目录下
	- `cp dependencies/opencv-lin64/lib/* ./lib`
	- `cp -R dependencies/opencv-lin64/include/opencv2/ ./include/`
	- `ln -s libopencv_core.so.2.4.3 lib/libopencv_core.so.2.4`
	- `ln -s libopencv_core.so.2.4.3 lib/libopencv_core.so.2`
	- `ln -s libopencv_core.so.2.4.3 lib/libopencv_core.so`
	- `ln -s libopencv_imgproc.so.2.4.3 lib/libopencv_imgproc.so.2.4`
	- `ln -s libopencv_imgproc.so.2.4.3 lib/libopencv_imgproc.so.2`
	- `ln -s libopencv_imgproc.so.2.4.3 lib/libopencv_imgproc.so`
- 安装 ois：下载 libOIS.1.4.tar.bz2，将其解压到本目录下；
- 安装 pico： 下载 libpico.tar.bz2， 将其解压到本目录下；
- 安装 lua-gd：下载 lua-gd-linux64.tar.bz2，将其解压到 resources/lua/modules；
- 安装 lua： 下载 http://www.lua.org/ftp/lua-5.2.3.tar.gz，将其解压到 dependencies 目录下；
- 安装 ssl：
	- 下载 libssl_1.0.2.tar.bz2
	- 将其解压到 dependencies 目录下
	- `cp dependencies/openssl/libcrypto.so lib/`
	- `cp dependencies/openssl/libssl.so lib/`



