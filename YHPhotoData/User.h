//
//  User.h
//  YHPhotoData
//
//  Created by Andy Huang on 2/11/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject <NSCoding>

@property (nonatomic) int64_t identifier;
@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSArray *photos;

- (NSString *)fullName;
- (NSUInteger)numberOfPhotosTaken;

@end
