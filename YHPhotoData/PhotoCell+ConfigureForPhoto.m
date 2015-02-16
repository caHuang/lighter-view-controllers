//
//  PhotoCell+ConfigureForPhoto.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/12/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "PhotoCell+ConfigureForPhoto.h"
#import "Photo.h"

@implementation PhotoCell (ConfigureForPhoto)

- (void)configureForPhoto:(Photo *)photo {
  self.photoTitleLabel.text = photo.name;
  self.photoDateLabel.text = [[self dateFormatter] stringFromDate:photo.creationDate];
}

- (NSDateFormatter *)dateFormatter {
  static NSDateFormatter *dateFormatter;
  if (!dateFormatter) {
    dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeStyle = NSDateFormatterMediumStyle;
    dateFormatter.dateStyle = NSDateFormatterMediumStyle;
  }
  return dateFormatter;
}

@end
