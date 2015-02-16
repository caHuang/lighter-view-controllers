//
//  PhotoCell.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/12/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "PhotoCell.h"

@implementation PhotoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) {
    self.photoTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 10.0f, 280.0f, 21.0f)];
    self.photoTitleLabel.textColor = [UIColor blackColor];
    self.photoTitleLabel.font = [UIFont systemFontOfSize:17.0f];
    [self.contentView addSubview:self.photoTitleLabel];

    self.photoDateLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 32.0f, 280.0f, 21.0f)];
    self.photoDateLabel.textColor = [UIColor lightGrayColor];
    self.photoDateLabel.font = [UIFont systemFontOfSize:13.0f];
    [self.contentView addSubview:self.photoDateLabel];
  }
  return self;
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
  [super setHighlighted:highlighted animated:animated];
  if (highlighted) {
    self.photoTitleLabel.shadowColor = [UIColor darkGrayColor];
    self.photoTitleLabel.shadowOffset = CGSizeMake(3, 3);
  } else {
    self.photoTitleLabel.shadowColor = nil;
  }
}

@end
