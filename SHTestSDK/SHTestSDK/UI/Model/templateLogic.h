//
//  templateLogic.h
//  demoSDK
//
//  Created by youguoshu on 2018/10/24.
//  Copyright © 2018年 youguoshu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface templateLogic : NSObject
-(void)sendGetDataRequestWithConmplete: (void(^)(BOOL isOK))complete;
@end
