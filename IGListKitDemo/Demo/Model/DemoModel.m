//
//  DemoModel.m
//  IGListKitDemo
//
//  Created by wsmbp on 2018/7/13.
//  Copyright © 2018 wsmbp. All rights reserved.
//

#import "DemoModel.h"

@implementation DemoModel
- (nonnull id<NSObject>)diffIdentifier {
    return self;
    
}

- (BOOL)isEqualToDiffableObject:(nullable id<IGListDiffable>)object {
    if (self == object) {
        return YES;
    } else if (self == nil || object == nil) {
        return NO;
    }
    return YES;
}
@end
