//
//  TJ_HomeCollectionViewCell.m
//  ShopCenterThree
//
//  Created by 周鑫 on 2018/12/4.
//  Copyright © 2018年 TJ. All rights reserved.
//

#import "TJ_HomeCollectionViewCell.h"

@interface TJ_HomeCollectionViewCell ()
@property (nonatomic,weak) UIImageView *imageView;
@property (nonatomic,weak) UILabel *priceLabel;
@property (nonatomic,weak) UIButton *buyBtn;
@end

@implementation TJ_HomeCollectionViewCell

+ (instancetype)cellWithCollection:(UICollectionView *)collectionView forReuseIdentifier:(NSString *)identifier indexPath:(NSIndexPath *)indexPath{
    
    TJ_HomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    return cell;
}



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
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@""]];
    [self.contentView addSubview:imageView];
    self.imageView = imageView;
    self.imageView.backgroundColor = RandomColor;
    
    UILabel *priceLabel = [UILabel XTJ_createWithTitle:@"10.00" titleColor:[UIColor orangeColor] font:12 textAlignment:NSTextAlignmentCenter];
    [self.contentView addSubview:priceLabel];
    self.priceLabel = priceLabel;
    
    UIButton *buyBtn = [UIButton XTJ_createWithTitle:@"立即购买" titleColor:nil font:12 selectTitle:@"" imageName:@"" selectImageName:@"" backgroundColor:RandomColor];
    [self.contentView addSubview:buyBtn];
    self.buyBtn  = buyBtn;
    
    
    
    
}

- (void)TJ_setupLayout {
    
    __weak typeof(self) weakSelf = self;
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(weakSelf.contentView);
        make.height.equalTo(weakSelf.contentView).multipliedBy(0.7);
    }];
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.imageView.bottom);
        make.right.left.equalTo(weakSelf.contentView);
        
    }];
    [self.buyBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(weakSelf.contentView);
        make.bottom.equalTo(weakSelf.contentView);
    }];
}
@end
