//
//  Photo.h
//  YHPhotoData
//
//  Created by Andy Huang on 2/11/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;

@interface Photo : NSObject <NSCoding>

@property (nonatomic) int64_t identifier;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSDate *creationDate;
@property (nonatomic) double rating;

@property (nonatomic, weak) User *user;

- (NSString *)authorFullName;
- (double)adjustedRating;

@end
