//
//  DemoCollectionViewCell.h
//  IGListKitDemo
//
//  Created by wsmbp on 2018/7/13.
//  Copyright © 2018 wsmbp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DemoModel.h"
@interface DemoCollectionViewCell : UICollectionViewCell
-(void)setModel:(DemoModel *)model row:(NSInteger)row;

@end
