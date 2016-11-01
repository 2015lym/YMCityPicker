原作者是`李伯坤`,TLCityPicker的作者。

由于作者长期没有更新，而且没有定位功能，所以本人在原作者框架基础上添加了定位城市，并针对Xcode8做了一些修改。



创建于：2016.10.27 Lym
---
    1.在原作基础上增加了城市定位功能

    2.增加了判定，如果用户选择不允许获取地理位置，则弹窗提示，跳转到系统设置中让用户修改权限

    3.导入方法简单，参考此DEMO，新建项目需要在项目中的info.plist中添加

    Privacy - Location Always Usage Description

    Privacy - Location When In Use Usage Description

    以获取地理位置权限
    
![项目截图.png](http://upload-images.jianshu.io/upload_images/2024647-3e3ed82be67b3d4b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
