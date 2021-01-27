//
//  AppDelegate.m
//  XTCG_Models_Test
//
//  Created by Thomas on 2021/1/20.
//

#import "AppDelegate.h"
#import "TSMainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    TSMainViewController *mainViewContorller = [[TSMainViewController alloc] init];
    UINavigationController *navContorller = [[UINavigationController alloc] initWithRootViewController:mainViewContorller];
    [self.window setRootViewController:navContorller];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
