//
//  PhotoCell+ConfigureForPhoto.h
//  YHPhotoData
//
//  Created by Andy Huang on 2/12/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "PhotoCell.h"

@class Photo;

@interface PhotoCell (ConfigureForPhoto)

- (void)configureForPhoto:(Photo *)photo;

@end
