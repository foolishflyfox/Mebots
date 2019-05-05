WEBOTS_HOME ?= ..
WEBOTS_DEPENDENCY_PATH ?= $(WEBOTS_HOME)/dependencies

include $(WEBOTS_HOME)/resources/Makefile.os.include

# 依赖库的下载地址
DEPENDENCIES_URL = https://cyberbotics.com/files/repository/dependencies/linux64/release

# 跨平台 gui 编程库 qt
QT_PACKAGE = webots-qt-5.11.2-linux64-release.tar.bz2
# 跨平台音效库 openal
OPENAL_PACKAGE = openal-linux64-1.16.0.tar.bz2
# 跨平台计算机视觉库 opencv
OPENCV_PACKAGE = opencv-linux64.tar.gz
# OIS: object oriented input system 面向对象的输入系统，理论上可以支持任何的输入设备
# 其中最主要的3类是键盘、鼠标和游戏控制器
OIS_PACKAGE = libOIS.1.4.tar.bz2
# PICO：用于从文本到语言的转换
PICO_PACKAGE = libpico.tar.bz2
# gd 的 lua 版本库，gd 是一个能够快速创建含有直线、多边形等图形的图片的库
LUA_GD_PACKAGE = lua-gd-linux64.tar.bz2
# lua 编程语言库
LUA_PACKAGE = lua-5.2.3.tar.gz
# openssl 用于保证传输层的安全，并非直接用于 Webots，但却是用于验证发布包的可选依赖项
OPENSSL_PACKAGE = libssl_1.0.2.tar.bz2

PACKAGES = qt open-al open-cv ois pico lua-gd lua
PACKAGES_CLEAN = $(addsuffix -clean, $(PACKAGES))

ifeq ($(UBUNTU_VERSION), 18.04)
  PACKAGES += open-ssl
endif

.PHONY: release debug distrib profile clean cleanse $(PACKAGES) $(PACKAGES_CLEAN)

# release debug distrib profile: $(PACKAGES)
# clean:
# cleanse: $(PACKAGES_CLEAN)

# qt: $(WEBOTS_HOME)/lib/libQt5Core.so.5.11.2

# $(WEBOTS_HOME)/lib/libQt5Core.so.5.11.2:

release: 
	@echo $(PACKAGES_CLEAN)
	
