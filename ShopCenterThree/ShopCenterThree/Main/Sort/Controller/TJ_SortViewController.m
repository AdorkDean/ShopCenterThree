//
//  TJ_SortViewController.m
//  ShopCenterThree
//
//  Created by 周鑫 on 2018/12/4.
//  Copyright © 2018年 TJ. All rights reserved.
//

#import "TJ_SortViewController.h"

@interface TJ_SortViewController ()<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic,weak) UITableView *sortTableView;
@property (nonatomic,weak) UICollectionView *detailsCollectionView;

@end

@implementation TJ_SortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self TJ_setupUI];
    [self TJ_setupLayout];
}

- (void)TJ_setupUI {
    
    CGFloat  sortTableViewX,sortTableViewY,sortTableViewW,sortTableViewH;
    sortTableViewX = 0;
    sortTableViewY = 0;
    sortTableViewW = 100;
    sortTableViewH = self.view.frame.size.height;
    CGRect sortTableViewRect = CGRectMake(sortTableViewX, sortTableViewY, sortTableViewW, sortTableViewH);
    UITableView *sortTableView  = [[UITableView alloc]initWithFrame:sortTableViewRect style:UITableViewStylePlain];
    sortTableView.delegate = self;
    sortTableView.dataSource = self;
    [self.view addSubview:sortTableView];
    self.sortTableView = sortTableView;
    
    
    
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(100, 100);
    UICollectionView *detailsCollectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:layout];
    detailsCollectionView.delegate = self;
    detailsCollectionView.dataSource = self;
    [detailsCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.view addSubview:detailsCollectionView];
    self.detailsCollectionView = detailsCollectionView;
    
    
}


- (void)TJ_setupLayout {
    
    
}



#pragma mark -------------------------- Delegate ----------------------------------------
#pragma mark TableView Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    return cell;
}
#pragma mark UICollectionViewDelegate
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}
@end
