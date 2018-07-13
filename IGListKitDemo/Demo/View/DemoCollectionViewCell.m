//
//  DemoCollectionViewCell.m
//  IGListKitDemo
//
//  Created by wsmbp on 2018/7/13.
//  Copyright © 2018 wsmbp. All rights reserved.
//

#import "DemoCollectionViewCell.h"
#import "Masonry.h"
@interface DemoCollectionViewCell()
@property(nonatomic,strong)UILabel *titleLabel;
@property(nonatomic,strong)UILabel *desLabel;

@property(nonatomic,strong)UIImageView *imageView;

@end
@implementation DemoCollectionViewCell
- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        self.titleLabel= [UILabel new];
        self.titleLabel.textColor=[UIColor redColor];
        self.titleLabel.font=[UIFont systemFontOfSize:15];
        [self addSubview:self.titleLabel];
        
        self.desLabel= [UILabel new];
        self.desLabel.textColor=[UIColor orangeColor];
        self.desLabel.font=[UIFont systemFontOfSize:15];
        [self addSubview:self.desLabel];
        
        
        UIImageView *imageView=[UIImageView new];
        imageView.backgroundColor=[UIColor lightGrayColor];
        [self addSubview:imageView];
        self.imageView=imageView;
        
    }
    return self;
    
}

-(void)setModel:(DemoModel *)model row:(NSInteger)row
{
    self.titleLabel.text=model.title;
    self.desLabel.text=[NSString stringWithFormat:@"Row%ld",(long)row];
    
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self).offset(15);
        make.centerY.mas_equalTo(self);
    }];
    
    [self.desLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.titleLabel.mas_right).offset(25);
        make.centerY.mas_equalTo(self);
    }];
    
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.left.right.mas_equalTo(self);
        make.height.mas_equalTo(1);
    }];
    
    
}
@end
