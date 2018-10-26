//
//  templateLogic.m
//  demoSDK
//
//  Created by youguoshu on 2018/10/24.
//  Copyright © 2018年 youguoshu. All rights reserved.
//

#import "templateLogic.h"

@implementation templateLogic

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void)dealloc{
    
    
}

-(void)sendGetDataRequestWithConmplete: (void(^)(BOOL isOK))complete{
    
    if (complete) {
        
        complete(YES);
    }
}

@end
