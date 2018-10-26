//
//  templateView.m
//  demoSDK
//
//  Created by youguoshu on 2018/10/24.
//  Copyright © 2018年 youguoshu. All rights reserved.
//

#import "templateView.h"

@implementation templateView

-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self configViewInfo];
    }
    return self;
}

-(void)configViewInfo{
    
    self.backgroundColor = [UIColor redColor];
    [self addSubview:self.requestBtn];
    self.requestBtn.frame = CGRectMake(10, 10, 80, 30);
}

-(void)onSendRequest: (UIButton *)btn{
    
    if ([self.delegate respondsToSelector:@selector(requestData)]) {
        
        [self.delegate requestData];
    }
    
}

-(void)updateViewInfoWithData: (id)data{
    
    [_requestBtn setTitle:@"OK" forState:UIControlStateNormal];
}

-(UIButton *)requestBtn{
    
    if (!_requestBtn) {
        
        _requestBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [_requestBtn setTitle:@"请求数据" forState:UIControlStateNormal];
        [_requestBtn addTarget:self action:@selector(onSendRequest:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _requestBtn;
}

@end
