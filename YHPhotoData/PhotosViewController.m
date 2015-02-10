//
//  PhotosViewController.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/10/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "PhotosViewController.h"
#import "ArrayDataSource.h"

static NSString * const PhotoCellIdentifier = @"PhotoCell";

@interface PhotosViewController() <UITableViewDelegate>

- (void)setupTableView;

@property (strong, nonatomic) UITableView *tableView;

@end

@implementation PhotosViewController

#pragma mark - View's Lifecycle

- (void)loadView {
  [super loadView];
  self.view.backgroundColor = [UIColor whiteColor];
  [self setupTableView];
  [self.view addSubview:self.tableView];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  self.title = @"Photos";
}

#pragma mark - Setup

- (void)setupTableView {
  self.tableView = [[UITableView alloc] initWithFrame:self.view.frame];
  self.tableView.delegate = self;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end
