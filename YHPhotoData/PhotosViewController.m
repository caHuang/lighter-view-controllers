//
//  PhotosViewController.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/10/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "PhotosViewController.h"
#import "AppDelegate.h"
#import "Store.h"
#import "Photo.h"
#import "ArrayDataSource.h"
#import "PhotoCell+ConfigureForPhoto.h"

static NSString * const PhotoCellIdentifier = @"PhotoCell";

@interface PhotosViewController() <UITableViewDelegate>

- (void)setupTableView;

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) ArrayDataSource *photosDataSource;

@end

@implementation PhotosViewController

#pragma mark - View's Lifecycle

- (void)loadView {
  [super loadView];
  UIView *view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
  self.view.backgroundColor = [UIColor whiteColor];
  self.view = view;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  self.title = @"Photos";
  [self setupTableView];
  [self.view addSubview:self.tableView];
}

#pragma mark - Setup

- (void)setupTableView {
  self.tableView = [[UITableView alloc] initWithFrame:self.view.frame];
  self.tableView.delegate = self;
  
  TableViewCellConfigureBlock configureCell = ^(PhotoCell *cell, Photo *photo) {
    [cell configureForPhoto:photo];
  };

  Store *store = [AppDelegate sharedDelegate].store;
  NSArray *photos = store.sortedPhotos;
  self.photosDataSource = [[ArrayDataSource alloc] initWithItems:photos
                                                  cellIdentifier:PhotoCellIdentifier
                                              configureCellBlock:configureCell];
  self.tableView.dataSource = self.photosDataSource;
  [self.tableView registerClass:[PhotoCell class] forCellReuseIdentifier:PhotoCellIdentifier];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 60.0f;
}

@end
