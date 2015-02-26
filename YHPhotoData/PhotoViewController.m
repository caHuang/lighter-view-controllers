//
//  PhotoViewController.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/16/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()

@property (strong, nonatomic) UILabel *authorLabel;
@property (strong, nonatomic) UILabel *photosTakenLabel;

@end

@implementation PhotoViewController

#pragma mark - View's Lifecycle

- (void)loadView {
  [super loadView];
  UIView *view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
  self.view.backgroundColor = [UIColor whiteColor];
  self.view = view;
}

- (void)viewDidLoad {
  [super viewDidLoad];
}

@end
