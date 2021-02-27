//
//  AppDelegate.m
//  XTCG_Models_Test
//
//  Created by Thomas on 2021/1/20.
//

#import "AppDelegate.h"
#import "TSTabBarController.h"

#import "TSMainViewController.h"
#import "CGMainViewController.h"
#import "CG_TSTestViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self setRootViewController];
    
    return YES;
}

- (void)setRootViewController {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    CG_TSTestViewController *cgTestViewContorller = [[CG_TSTestViewController alloc] init];
    UINavigationController *cgTestNavViewContorller = [[UINavigationController alloc] initWithRootViewController:cgTestViewContorller];
    cgTestNavViewContorller.tabBarItem.title = @"SDK测试页";
    
    TSMainViewController *mainViewContorller = [[TSMainViewController alloc] init];
    UINavigationController *mainNavViewContorller = [[UINavigationController alloc] initWithRootViewController:mainViewContorller];
    mainNavViewContorller.tabBarItem.title = @"测试";
    CGMainViewController *cgMainViewContorller = [[CGMainViewController alloc] init];
    UINavigationController *cgMainNavViewContorller = [[UINavigationController alloc] initWithRootViewController:cgMainViewContorller];
    cgMainNavViewContorller.tabBarItem.title = @"畅感";
    TSTabBarController *tabBarController = [[TSTabBarController alloc] init];
    tabBarController.viewControllers = @[cgTestNavViewContorller, cgMainNavViewContorller,mainNavViewContorller];

    [self.window setRootViewController:tabBarController];
    [self.window makeKeyAndVisible];
}

@end
