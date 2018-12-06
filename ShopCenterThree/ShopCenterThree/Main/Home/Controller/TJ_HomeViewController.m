//
//  TJ_HomeViewController.m
//  ShopCenterThree
//
//  Created by 周鑫 on 2018/11/28.
//  Copyright © 2018年 TJ. All rights reserved.
//

#import "TJ_HomeViewController.h"
#import "TJ_HomeCollectionViewHeaderView.h"
#import "TJ_HomeCollectionViewCell.h"

@interface TJ_HomeViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic,weak) UICollectionView *collectionView;
@property (nonatomic,weak) TJ_HomeCollectionViewHeaderView *headerView;
@end

@implementation TJ_HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self TJ_setupUI];
    [self TJ_setupLayout];
}



#pragma mark -------------------------- Menas ----------------------------------------
#pragma mark private
- (void)TJ_setupUI {
    
    self.view.backgroundColor = WhiteColor;
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(100, 100);
    layout.headerReferenceSize = CGSizeMake(self.view.frame.size.width, 1000);
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:layout];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [collectionView registerClass:[TJ_HomeCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [collectionView registerClass:[TJ_HomeCollectionViewHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header"];
    [self.view addSubview:collectionView];
    self.collectionView = collectionView;
    
    
    
}

- (void)TJ_setupLayout {
    
    
}
#pragma mark respond



#pragma mark -------------------------- Delegate ----------------------------------------
#pragma mark collectionViewl delegate
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
//    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
//    cell.contentView.backgroundColor = RandomColor;
    
    TJ_HomeCollectionViewCell *cell= [TJ_HomeCollectionViewCell cellWithCollection:collectionView forReuseIdentifier:@"cell" indexPath:indexPath];
    cell.contentView.backgroundColor = RandomColor;
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        TJ_HomeCollectionViewHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];
        return headerView;
    }
    
    return nil;
}


@end
