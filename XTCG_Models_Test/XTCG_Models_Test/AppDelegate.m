//
//  AppDelegate.m
//  XTCG_Models_Test
//
//  Created by Thomas on 2021/1/20.
//

#import "AppDelegate.h"
#import "TSTabBarController.h"

#import "TSMainViewController.h"
#import "CG_TSMainViewController.h"
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
    
    TSMainViewController *mainViewContorller = [[TSMainViewController alloc] init];
    UINavigationController *mainNavViewContorller = [[UINavigationController alloc] initWithRootViewController:mainViewContorller];
    mainNavViewContorller.tabBarItem.title = @"测试";
    CG_TSMainViewController *cgMainViewContorller = [[CG_TSMainViewController alloc] init];
    UINavigationController *cgMainNavViewContorller = [[UINavigationController alloc] initWithRootViewController:cgMainViewContorller];
    cgMainNavViewContorller.tabBarItem.title = @"畅感";
    TSTabBarController *tabBarController = [[TSTabBarController alloc] init];
    tabBarController.viewControllers = @[mainNavViewContorller,
                                         cgMainNavViewContorller];

    [self.window setRootViewController:tabBarController];
    [self.window makeKeyAndVisible];
}

@end
