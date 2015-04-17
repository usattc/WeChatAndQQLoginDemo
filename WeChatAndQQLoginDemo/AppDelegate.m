//
//  AppDelegate.m
//  WeChatAndQQLoginDemo
//
//  Created by TTC on 4/17/15.
//  Copyright (c) 2015 TTC. All rights reserved.
//

#import "AppDelegate.h"
#import "UMSocial.h"
#import "UMSocialWechatHandler.h"
#import "UMSocialQQHandler.h"


// 这个Key要自己去友盟注册, 以下是官方的Demo Key
// 详见 http://dev.umeng.com/social/ios/quick-integration#2
#define UmengAppkey @"5211818556240bc9ee01db2f"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //设置友盟社会化组件appkey
    [UMSocialData setAppKey:UmengAppkey];
    
    // AppId和appSecret需要在微信开放平台申请, 以下是友盟Demo的AppId和appSecret
    // 详见http://dev.umeng.com/social/ios/detail-share#2
    [UMSocialWechatHandler setWXAppId:@"wxd930ea5d5a258f4f" appSecret:@"db426a9829e4b49a0dcac7b4162da6b6" url:@"http://www.umeng.com/social"];
    
    // 使用QQ及Qzone分享首先在腾讯开放平台注册应用, 地址:http://open.qq.com , 以下是友盟Demo的AppId和appKey
    // 详见http://dev.umeng.com/social/ios/detail-share#4
    [UMSocialQQHandler setQQWithAppId:@"100424468" appKey:@"c7394704798a158208a74ab60104f0ba" url:@"http://www.umeng.com/social"];
    [UMSocialQQHandler setSupportWebView:YES];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
