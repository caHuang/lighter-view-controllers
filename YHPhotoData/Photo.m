//
//  Photo.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/11/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "Photo.h"
#import "User.h"

static NSString * const IdentifierKey = @"identifier";
static NSString * const NameKey = @"name";
static NSString * const CreationDateKey = @"creationDate";
static NSString * const RatingKey = @"rating";
static NSString * const UserKey = @"user";

@implementation Photo

- (NSString *)description {
  NSString *formatString = @"<%@: %p> (%lld) \"%@\"";
  return [NSString stringWithFormat:formatString, [self class], self,
          (long long)self.identifier, self.name];
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
  [aCoder encodeInt64:self.identifier forKey:IdentifierKey];
  [aCoder encodeObject:self.name forKey:NameKey];
  [aCoder encodeObject:self.creationDate forKey:CreationDateKey];
  [aCoder encodeDouble:self.rating forKey:RatingKey];
  [aCoder encodeConditionalObject:self.user forKey:UserKey];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
  self = [super init];
  if (self) {
    self.identifier = [aDecoder decodeInt64ForKey:IdentifierKey];
    self.name = [aDecoder decodeObjectOfClass:[NSString class] forKey:NameKey];
    self.creationDate = [aDecoder decodeObjectOfClass:[NSDate class] forKey:CreationDateKey];
    self.rating = [aDecoder decodeDoubleForKey:RatingKey];
    self.user = [aDecoder decodeObjectOfClass:[User class] forKey:UserKey];
  }
  return self;
}

- (BOOL)requiresSecureCoding {
  return YES;
}

- (NSString *)authorFullName {
  return self.user.fullName;
}

- (double)adjustedRating {
  double adjustedRating = (self.rating - 97) / 3.0;
  if (adjustedRating < 0) {
    adjustedRating = 0;
  }
  return adjustedRating;
}

@end
