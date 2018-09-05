//
//  AppDelegate.m
//  StickFigure
//
//  Created by ZY on 2017/7/14.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
        
    //导航栏文字
    NSMutableDictionary *titleattributes = [[NSMutableDictionary alloc]init];
    //定制title字体
    [titleattributes setValue:[UIFont boldSystemFontOfSize:19] forKey:NSFontAttributeName];
    //定制title颜色
    [titleattributes setValue:[UIColor blackColor] forKey:NSForegroundColorAttributeName];
    [UINavigationBar appearance].titleTextAttributes = titleattributes;
    
    [self.window makeKeyAndVisible];
    
    UINavigationController * mainNav = [[UINavigationController alloc]init];
    _manViewConTroller = [[StickFigureViewController alloc]init];
    [mainNav pushViewController:_manViewConTroller animated:NO];
    self.window.rootViewController = mainNav;
    
    [self initData];
    return YES;
}

-(void)initData
{
    [UMConfigure initWithAppkey:Umeng_APPKey channel:@"App Store"];
    // 统计组件配置
    [MobClick setScenarioType:E_UM_NORMAL];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

+ (AppDelegate *)appDelegate
{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}
@end
