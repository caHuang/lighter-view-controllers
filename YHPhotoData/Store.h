//
//  Store.h
//  YHPhotoData
//
//  Created by Andy Huang on 2/11/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Store : NSObject

+ (instancetype)store;

@property (readonly, strong, nonatomic) NSArray *photos;
@property (readonly, strong, nonatomic) NSArray *users;

- (NSArray *)sortedPhotos;

@end
