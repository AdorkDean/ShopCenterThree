//
//  TJ_HomeCollectionViewHeaderView.m
//  ShopCenterThree
//
//  Created by 周鑫 on 2018/11/30.
//  Copyright © 2018年 TJ. All rights reserved.
//

#import "TJ_HomeCollectionViewHeaderView.h"
#import "TJ_HomeHeaderSortOneView.h"
#import "TJ_HomeHeaderSortTwoView.h"
#import "TJ_HomeHeaderSortThreeView.h"



@interface TJ_HomeCollectionViewHeaderView  ()<SDCycleScrollViewDelegate>

@property (nonatomic,weak) SDCycleScrollView *cycleBannerView;
@property (nonatomic,weak) SDCycleScrollView *cycleTitleView;
@property (nonatomic,weak) SDCycleScrollView *cycleAdvertView;
@property (nonatomic,weak) TJ_HomeHeaderSortOneView *sortOneView;
@property (nonatomic,weak) TJ_HomeHeaderSortTwoView *sortTwoView;
@property (nonatomic,weak) TJ_HomeHeaderSortThreeView *sortThreeView;

@end
@implementation TJ_HomeCollectionViewHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self TJ_setupUI];
        [self TJ_setupLayout];
    }
    return self;
}

#pragma mark -------------------------- Means ----------------------------------------
#pragma mark    private
- (void)TJ_setupUI {
    
//    self.backgroundColor = [UIColor redColor];
    CGFloat cycleBannerViewX,cycleBannerViewY,cycleBannerViewW,cycleBannerViewH;
    cycleBannerViewX = 0;
    cycleBannerViewY = 0;
    cycleBannerViewW = self.frame.size.width;
    cycleBannerViewH = cycleBannerViewW * 9/16;
    CGRect cycleBannerViewRect = CGRectMake(cycleBannerViewX, cycleBannerViewY, cycleBannerViewW, cycleBannerViewH);
    SDCycleScrollView *cycleBannerView = [SDCycleScrollView cycleScrollViewWithFrame:cycleBannerViewRect delegate:self placeholderImage:[UIImage imageNamed:@""]];
    [self addSubview:cycleBannerView];
    self.cycleBannerView = cycleBannerView;
    self.cycleBannerView.backgroundColor = RandomColor;
    
    CGFloat cycleTitleViewX,cycleTitleViewY,cycleTitleViewW,cycleTitleViewH;
    cycleTitleViewX = 0;
    cycleTitleViewY = CGRectGetMaxY(cycleBannerViewRect);
    cycleTitleViewW = self.frame.size.width;
    cycleTitleViewH = 60;
    CGRect cycleTitleViewRect = CGRectMake(cycleTitleViewX, cycleTitleViewY, cycleTitleViewW, cycleTitleViewH);
    SDCycleScrollView *cycleTitleView = [SDCycleScrollView cycleScrollViewWithFrame:cycleTitleViewRect delegate:self placeholderImage:[UIImage imageNamed:@""]];
    [self addSubview:cycleTitleView];
    self.cycleTitleView =cycleTitleView;
    self.cycleTitleView.backgroundColor = RandomColor;
    
    CGFloat cycleAdvertViewX,cycleAdvertViewY,cycleAdvertViewW,cycleAdvertViewH;
    cycleAdvertViewX = 0;
    cycleAdvertViewY = CGRectGetMaxY(cycleTitleViewRect);
    cycleAdvertViewW = self.frame.size.width;
    cycleAdvertViewH = 60;
    CGRect cycleAdvertViewRect = CGRectMake(cycleAdvertViewX, cycleAdvertViewY, cycleAdvertViewW, cycleAdvertViewH);
    SDCycleScrollView *cycleAdvertView = [SDCycleScrollView cycleScrollViewWithFrame:cycleAdvertViewRect delegate:self placeholderImage:[UIImage imageNamed:@""]];
    [self addSubview:cycleAdvertView];
    self.cycleAdvertView = cycleAdvertView;
    self.cycleAdvertView.backgroundColor = RandomColor;
    
    TJ_HomeHeaderSortOneView *sortOneView = [[TJ_HomeHeaderSortOneView alloc]init];
    [self addSubview:sortOneView];
    self.sortOneView = sortOneView;
    self.sortOneView.backgroundColor  = RandomColor;
    
    TJ_HomeHeaderSortTwoView *sortTwoView = [[TJ_HomeHeaderSortTwoView alloc]init];
    [self addSubview:sortTwoView];
    self.sortTwoView = sortTwoView;
    self.sortTwoView.backgroundColor = RandomColor;
    
    TJ_HomeHeaderSortThreeView *sortThreeView = [[TJ_HomeHeaderSortThreeView alloc]init];
    [self addSubview:sortThreeView];
    self.sortThreeView = sortThreeView;
    self.sortThreeView.backgroundColor  = RandomColor;
    
}

- (void)TJ_setupLayout {
    __weak typeof(self) weakSelf = self;
    [self.sortOneView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(weakSelf);
        make.top.equalTo(weakSelf.cycleAdvertView.bottom);
        make.height.equalTo(300);
    }];
    [self.sortTwoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(weakSelf);
        make.top.equalTo(weakSelf.sortOneView.bottom);
        make.height.equalTo(300);
    }];
    [self.sortThreeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(weakSelf);
        make.top.equalTo(weakSelf.sortTwoView.bottom);
        make.height.equalTo(300);
    }];
    
    
}
#pragma mark respond
@end
