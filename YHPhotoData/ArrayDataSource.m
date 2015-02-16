//
//  ArrayDataSource.m
//  YHPhotoData
//
//  Created by Andy Huang on 2/10/15.
//  Copyright (c) 2015 Andy Huang. All rights reserved.
//

#import "ArrayDataSource.h"

@interface ArrayDataSource()

@property (strong, nonatomic) NSArray *items;
@property (strong, nonatomic) NSString *cellIdentifier;
@property (strong, nonatomic) TableViewCellConfigureBlock configureCellBlock;

@end

@implementation ArrayDataSource

- (instancetype)init {
  return nil;
}

- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock {
  self = [super init];
  if (self) {
    self.items = anItems;
    self.cellIdentifier = aCellIdentifier;
    self.configureCellBlock = [aConfigureCellBlock copy];
  }
  return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
  return self.items[(NSUInteger)indexPath.row];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier
                                                          forIndexPath:indexPath];
  id item = [self itemAtIndexPath:indexPath];
  self.configureCellBlock(cell, item);
  return cell;
}

@end
