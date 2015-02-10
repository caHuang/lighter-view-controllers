//
//  PhotosViewController.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/10/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "PhotosViewController.h"

@implementation PhotosViewController

#pragma mark - View's Lifecycle

- (void)loadView {
  [super loadView];
  self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  self.title = @"Photos";
}

@end
