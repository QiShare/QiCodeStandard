//
//  AppDelegate.m
//  QiCodeStandard
//
//  Created by QiShare on 2018/8/2.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "AppDelegate.h"
#import "QiMineViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.backgroundColor = [UIColor whiteColor];
    _window.rootViewController = [QiMineViewController new];
    
    [_window makeKeyAndVisible];
    
    return YES;
}

@end
