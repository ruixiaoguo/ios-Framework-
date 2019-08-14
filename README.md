# IPA 动态库注入Framework
### 创建动态库工程(1.设置bitCode 2.切换旧的编译环境)
### 参考链接：https://www.jianshu.com/p/b447ec564837

### 修改Mach-O的格式，不然封装出来的库将以动态库的形式存在。将target->BuildSetting->Mach-o Type 设为Static Library（默认为Dynamic Library）
