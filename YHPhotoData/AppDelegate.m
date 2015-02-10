//
//  AppDelegate.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/10/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "AppDelegate.h"
#import "PhotosViewController.h"

@implementation AppDelegate

#pragma mark - UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  self.window.rootViewController = [[PhotosViewController alloc] init];
  [self.window makeKeyAndVisible];
  return YES;
}

@end
