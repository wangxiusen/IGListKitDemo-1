//
//  DemoModel.h
//  IGListKitDemo
//
//  Created by wsmbp on 2018/7/13.
//  Copyright © 2018 wsmbp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGListKit.h"

@interface DemoModel : NSObject<IGListDiffable>
@property(nonatomic,copy)NSString *title;

@end
