//
//  DemoSectionController.m
//  IGListKitDemo
//
//  Created by wsmbp on 2018/7/13.
//  Copyright © 2018 wsmbp. All rights reserved.
//

#import "DemoSectionController.h"
#import "DemoCollectionViewCell.h"
#import "DemoModel.h"
@interface DemoSectionController()
{
    DemoModel *_object;
    
}
@end
@implementation DemoSectionController
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.inset=UIEdgeInsetsMake(0, 0, 30, 0);
        self.minimumLineSpacing=0;
        
    }
    return self;
}

- (NSInteger)numberOfItems{
    
   //每个section返回多少行根据数据来写 一般可能就是1
    return 3;
}

- (CGSize)sizeForItemAtIndex:(NSInteger)index{
    
    return  CGSizeMake(self.collectionContext.containerSize.width, 46);
    
}


-(UICollectionViewCell *)cellForItemAtIndex:(NSInteger)index{
    
    DemoCollectionViewCell*cell=[self.collectionContext dequeueReusableCellOfClass:[DemoCollectionViewCell class] forSectionController:self atIndex:index];
    [cell setModel:_object row:index];
    return cell;
    
    
    
}
- (void)didSelectItemAtIndex:(NSInteger)index {
    
    NSLog(@"点击Section%ld  row%ld",(long)self.section,(long)index);
}
- (void)didUpdateToObject:(id)object{
    //数据传输到这里
    _object =(DemoModel *)object;
    
    
}
@end
