//
//  templateView.h
//  demoSDK
//
//  Created by youguoshu on 2018/10/24.
//  Copyright © 2018年 youguoshu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol templateViewDelegate <NSObject>

-(void)requestData;

@end

@interface templateView : UIView

@property(nonatomic,strong)UIButton *requestBtn;
@property(nonatomic,weak)id<templateViewDelegate> delegate;
-(void)updateViewInfoWithData: (id)data;
@end
