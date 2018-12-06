//
//  TJ_HomeHeaderSortOneView.m
//  ShopCenterThree
//
//  Created by 周鑫 on 2018/12/4.
//  Copyright © 2018年 TJ. All rights reserved.
//

#import "TJ_HomeHeaderSortOneView.h"


@interface TJ_HomeHeaderSortOneView ()
@property (nonatomic,weak) UILabel *titleLabel;
@property (nonatomic,weak) UIView *itemOneView;
@property (nonatomic,weak) UIView *itemTwoView;
@property (nonatomic,weak) UIView *itemThreeView;
@property (nonatomic,weak) UIView *itemFourView;
@property (nonatomic,weak) UIView *itemFiveView;
@end
@implementation TJ_HomeHeaderSortOneView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self TJ_setupUI];
        [self TJ_setupLayout];
    }
    return self;
}

- (void)TJ_setupUI {
    
    UILabel *titleLabel = [UILabel XTJ_createWithTitle:@"分类一" titleColor:[UIColor blackColor] font:12 textAlignment:NSTextAlignmentCenter];
    [self addSubview:titleLabel];
    self.titleLabel = titleLabel;
    
    UIView *itemOneView = [[UIView alloc]init];
    [self addSubview:itemOneView];
    self.itemOneView = itemOneView;
    self.itemOneView.backgroundColor = RandomColor;
    
    UIView *itemTwoView = [[UIView alloc]init];
    [self addSubview:itemTwoView];
    self.itemTwoView = itemTwoView;
    self.itemTwoView.backgroundColor = RandomColor;
    
    UIView *itemThreeView = [[UIView alloc]init];
    [self addSubview:itemThreeView];
    self.itemThreeView = itemThreeView;
    self.itemThreeView.backgroundColor =  RandomColor;
    
    UIView *itemFourView = [[UIView alloc]init];
    [self addSubview:itemFourView];
    self.itemFourView = itemFourView;
    self.itemFourView.backgroundColor = RandomColor;
   
    UIView *itemFiveView = [[UIView alloc]init];
    [self addSubview:itemFiveView];
    self.itemFiveView = itemFiveView;
     self.itemFiveView.backgroundColor = RandomColor;
    

    
}


- (void)TJ_setupLayout {
    
    __weak typeof(self) weakSelf = self;
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf);
        make.centerX.equalTo(weakSelf);
    }];
    
    [self.itemOneView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.titleLabel.bottom);
        make.left.equalTo(weakSelf);
        make.width.equalTo(weakSelf.width).multipliedBy(0.5);
        make.height.equalTo(weakSelf.height).multipliedBy(0.5).offset(-10);
    }];
    [self.itemTwoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.itemOneView.bottom);
        make.left.equalTo(weakSelf);
        make.width.equalTo(weakSelf.width).multipliedBy(0.5);
        make.height.equalTo(weakSelf.height).multipliedBy(0.5).offset(-10);
    }];
    [self.itemThreeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.titleLabel.bottom);
        make.left.equalTo(weakSelf.itemOneView.right);
        make.width.equalTo(weakSelf.width).multipliedBy(0.5);
        make.height.equalTo(weakSelf.height).multipliedBy(0.3);
    }];
    [self.itemFourView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.itemThreeView.bottom);
        make.left.equalTo(weakSelf.itemOneView.right);
        make.width.equalTo(weakSelf.width).multipliedBy(0.5);
        make.height.equalTo(weakSelf.height).multipliedBy(0.3);
    }];
    [self.itemFiveView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.itemFourView.bottom);
        make.left.equalTo(weakSelf.itemOneView.right);
        make.width.equalTo(weakSelf.width).multipliedBy(0.5);
        make.height.equalTo(weakSelf.height).multipliedBy(0.3);
    }];
    
}

@end
