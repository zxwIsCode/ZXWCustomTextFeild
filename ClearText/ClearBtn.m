//
//  ClearBtn.m
//  ClearText
//
//  Created by 栗国聚 on 18/10/29.
//  Copyright © 2018年 伟宏科技有限公司. All rights reserved.
//

#import "ClearBtn.h"

@interface ClearBtn ()

@property (nonatomic ,strong)UIButton *clerBtn;

@end

@implementation ClearBtn



- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
  
    if (self) {
      
        [self addSubview:self.clerBtn];
        UIImageView *imags = [[UIImageView alloc]initWithFrame:CGRectMake(2, 2, 30, 30)];
//        imags.userInteractionEnabled =YES;
        imags.image = [UIImage imageNamed:@"close_loginRegister_user"];
        [self addSubview:imags];
    }
    return self;
}

- (UIButton *)clerBtn {
    
    if (_clerBtn == nil) {
        
        _clerBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        [_clerBtn  addTarget:self action:@selector(clearAction) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return _clerBtn;
}

- (void)clearAction
{
    if (self.blockBtn) {
        self.blockBtn(YES);
    }
    
}

@end
