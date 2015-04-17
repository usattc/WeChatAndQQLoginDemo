# WeChatAndQQLoginDemo
这是一个使用友盟社会化组件写的第三方登录Demo, 支持微信和QQ登录, 其它同理

1. 开发者在利用友盟社会化组件时需要到友盟注册Key, 详见: http://dev.umeng.com/social/ios/quick-integration#2

2. 需要导入如下几个Framework, 否则编译过程会报错:
libstdc++.dylib、SystemConfiguration.framework、libsqlite3.0、libz.dylib

3. 微信和QQ的AppID等需要自行注册
详见: http://dev.umeng.com/social/ios/detail-share#2 和 http://dev.umeng.com/social/ios/detail-share#4

4. 要记得设置URL scheme, 否则完成后无法返回应用
详见: http://dev.umeng.com/social/ios/detail-share#1_3

另:

友盟官方的提示:

由于苹果审核政策需求，建议大家对未安装客户端平台进行隐藏，在设置QQ、微信AppID之前调用下面的方法， [UMSocialConfig hiddenNotInstallPlatforms:@[UMShareToQQ,UMShareToQzone,UMShareToWechatsession,UMShareToWechatTimeline]];
