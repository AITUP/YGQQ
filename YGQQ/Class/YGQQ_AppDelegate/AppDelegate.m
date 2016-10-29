//
//  AppDelegate.m
//  YGQQ
//
//  Created by 许亚光 on 2016/10/27.
//  Copyright © 2016年 xuyaguang. All rights reserved.
//

#import "AppDelegate.h"
#import "YGBaseTabBarController.h"
#import "YGLeftDrawerViewController.h"


@interface AppDelegate ()
@property (nonatomic, strong) MMDrawerController *drawerController;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self creatLeftDrawer];
    [self setupRootController];
    return YES;
}

- (void)creatLeftDrawer {
    YGLeftDrawerViewController *leftViewController = [[YGLeftDrawerViewController alloc] init];
    YGBaseTabBarController *tabBarViewController = [[YGBaseTabBarController alloc] init];
    _drawerController = [[MMDrawerController alloc] initWithCenterViewController:tabBarViewController leftDrawerViewController:leftViewController];
    [_drawerController setShowsShadow:NO];
    _drawerController.maximumLeftDrawerWidth = kLeftDrawerW;
    _drawerController.shouldStretchDrawer = NO;
    _drawerController.openDrawerGestureModeMask = MMOpenDrawerGestureModeAll;
    _drawerController.closeDrawerGestureModeMask =MMCloseDrawerGestureModeAll;
    [_drawerController setDrawerVisualStateBlock:[MMDrawerVisualState parallaxVisualStateBlockWithParallaxFactor:2.0]];
}

- (void)setupRootController {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = _drawerController;
    [self.window makeKeyAndVisible];
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


@end
