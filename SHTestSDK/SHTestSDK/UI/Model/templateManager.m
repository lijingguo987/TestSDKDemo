//
//  templateManager.m
//  demoSDK
//
//  Created by youguoshu on 2018/10/24.
//  Copyright © 2018年 youguoshu. All rights reserved.
//

#import "templateManager.h"
#import "templateViewController.h"
#import "templateLogic.h"
@interface templateManager ()

@property(nonatomic,strong)templateViewController *vc;
@property(nonatomic,strong)templateLogic *logic;

@end

@implementation templateManager

-(instancetype)init{
    
    self = [super init];
    
    if (self) {
        
    }
    return self;
}

-(UIViewController *)getVC{
    
    return self.vc;
}

-(templateViewController *)vc{
    
    if (!_vc) {
        
        _vc = [[templateViewController alloc] init];
        _vc.logic = self.logic;
    }
    return _vc;
}
-(templateLogic *)logic{
    
    if (!_logic) {
        
        _logic = [[templateLogic alloc] init];
    
    }
    return _logic;
}
@end
