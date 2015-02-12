//
//  Store.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/11/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "Store.h"
#import "Photo.h"

@interface Store()

- (void)readArchive;

@property (readwrite, strong, nonatomic) NSArray *photos;
@property (readwrite, strong, nonatomic) NSArray *users;

@end

@implementation Store

+ (instancetype)store {
  return [[self alloc] init];
}

- (instancetype)init {
  self = [super init];
  if (self) {
    [self readArchive];
  }
  return self;
}

- (void)readArchive {
  NSURL *archiveURL = [[NSBundle bundleForClass:[self class]] URLForResource:@"photodata" withExtension:@"bin"];
  NSAssert(archiveURL != nil, @"Unable to find archive in bundle.");
  NSData *data = [NSData dataWithContentsOfURL:archiveURL options:0 error:NULL];
  NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
  self.users = [unarchiver decodeObjectOfClass:[NSArray class] forKey:@"users"];
  self.photos = [unarchiver decodeObjectOfClass:[NSArray class] forKey:@"photos"];
  [unarchiver finishDecoding];
}

- (NSArray *)sortedPhotos {
  return [self.photos sortedArrayUsingComparator:^NSComparisonResult(Photo *photo1, Photo *photo2) {
    return [photo2.creationDate compare:photo1.creationDate];
  }];
}

@end
