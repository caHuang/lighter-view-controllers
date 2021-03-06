//
//  AppDelegate.h
//  YHPhotoData
//
//  Created by Andy Huang on 2/10/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Store;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

+ (instancetype)sharedDelegate;

@property (strong, nonatomic) UIWindow *window;
@property (readonly, strong, nonatomic) Store *store;

@end

