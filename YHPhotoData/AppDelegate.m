//
//  AppDelegate.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/10/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "AppDelegate.h"
#import "PhotosViewController.h"

@interface AppDelegate()

- (void)setupRootViewController;

@end

@implementation AppDelegate

#pragma mark - Setup

- (void)setupRootViewController {
  PhotosViewController *photosViewController = [[PhotosViewController alloc] init];
  UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:photosViewController];
  self.window.rootViewController = navigationController;
}

#pragma mark - UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  [self setupRootViewController];
  [self.window makeKeyAndVisible];
  return YES;
}

@end
