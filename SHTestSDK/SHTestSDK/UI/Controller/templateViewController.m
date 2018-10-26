//
//  templateViewController.m
//  demoSDK
//
//  Created by youguoshu on 2018/10/24.
//  Copyright © 2018年 youguoshu. All rights reserved.
//

#import "templateViewController.h"
#import "templateView.h"
#import "templateLogic.h"

@interface templateViewController ()<templateViewDelegate>

@property(nonatomic,strong)templateView *tempView;
@end

@implementation templateViewController

-(instancetype)init{
    
    self = [super init];
    if (self) {
//        [self configViewInfo];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configViewInfo];
    
}

-(void)configViewInfo{
    
    self.view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.tempView];
    self.tempView.frame = CGRectMake(100, 80, 100, 100);
    
}

-(void)requestData{
    
    if (self.logic) {
        
        [self.logic sendGetDataRequestWithConmplete:^(BOOL isOK) {
           
            if (isOK) {
                NSLog(@"请求成功");
                [self.tempView updateViewInfoWithData:nil];
            }
            else{
                
                NSLog(@"请求失败");
            }
        }];
    }
    
}

-(templateView *)tempView{
    
    if (!_tempView) {
        
        _tempView = [[templateView alloc] init];
        _tempView.delegate = self;
    }
    return _tempView;
}

@end
