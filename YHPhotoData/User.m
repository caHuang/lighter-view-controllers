//
//  User.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/11/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "User.h"

static NSString * const IdentifierKey = @"identifier";
static NSString * const UserNameKey = @"userName";
static NSString * const FirstNameKey = @"firstName";
static NSString * const LastNameKey = @"lastName";
static NSString * const PhotosKey = @"photos";

@implementation User

- (NSString *)description {
  NSString *formatString = @"<%@: %p> (%lld) \"%@\"";
  return [NSString stringWithFormat:formatString, [self class], self,
          (long long)self.identifier, self.userName];
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
  [aCoder encodeInt64:self.identifier forKey:IdentifierKey];
  [aCoder encodeObject:self.userName forKey:UserNameKey];
  [aCoder encodeObject:self.firstName forKey:FirstNameKey];
  [aCoder encodeObject:self.lastName forKey:LastNameKey];
  [aCoder encodeObject:self.photos forKey:PhotosKey];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
  self = [super init];
  if (self) {
    self.identifier = [aDecoder decodeInt64ForKey:IdentifierKey];
    self.userName = [aDecoder decodeObjectOfClass:[NSString class] forKey:UserNameKey];
    self.firstName = [aDecoder decodeObjectOfClass:[NSString class] forKey:FirstNameKey];
    self.lastName = [aDecoder decodeObjectOfClass:[NSString class] forKey:LastNameKey];
    self.photos = [aDecoder decodeObjectOfClass:[NSArray class] forKey:PhotosKey];
  }
  return self;
}

- (BOOL)requiresSecureCoding {
  return YES;
}

- (NSString *)fullName {
  return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (NSUInteger)numberOfPhotosTaken {
  return self.photos.count;
}

@end
