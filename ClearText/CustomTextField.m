//
//  CustomTextField.m
//  ClearText
//
//  Created by XDWY on 2018/5/16.
//  Copyright © 2018年 伟宏科技有限公司. All rights reserved.
//

#import "CustomTextField.h"
#import "ClearBtn.h"

#define WS(__KEY)  __weak typeof(self)__KEY = self


@interface CustomTextField ()

@property(nonatomic,strong)ClearBtn *clearBtn;

//@property(nonatomic,assign)CGRect textFeildFrame;

@property(nonatomic,strong)UITextField *textFeild;



@end

@implementation CustomTextField

-(instancetype)initWithFrame:(CGRect)frame {
    if (self =[super initWithFrame:frame]) {
        self.textFeild =[[UITextField alloc]init];
        self.textFeild.placeholder =@"请输入登录账号";
        self.textFeild.keyboardType =UIKeyboardTypeNumberPad;
        self.textFeild.font =[UIFont systemFontOfSize:16];
        [self.textFeild addTarget:self action:@selector(changeValue:) forControlEvents:(UIControlEventEditingChanged)];
        
        
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    self.textFeild.frame =CGRectMake(0, 0, self.frame.size.width -30, 30);
    [self addSubview:self.textFeild];

    
}

- (void)changeValue:(UITextField *)textFeild {
    
    if (self.textFeild.text.length >0) {
        [_clearBtn removeFromSuperview];
        [self addSubview:self.clearBtn];
    }else {
        
        [_clearBtn removeFromSuperview];
    }
    
    
}

- (ClearBtn *)clearBtn {
    
    if (_clearBtn == nil) {
        WS(ws);
        CGFloat clearBtnWH =30 ;
        _clearBtn = [[ClearBtn alloc]initWithFrame:CGRectMake(self.frame.size.width -clearBtnWH, 0, clearBtnWH,clearBtnWH)];
        _clearBtn.userInteractionEnabled =YES;
        if (self.textFeild.text.length) {
            [self addSubview:self.clearBtn];
        }
        
        _clearBtn.blockBtn = ^(BOOL isYes){
            
            if (isYes) {
                ws.textFeild.text = @"";
                [_clearBtn removeFromSuperview];
            }
            
        };
    }
    return _clearBtn;
}

@end
