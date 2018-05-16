//
//  ViewController.m
//  ClearText
//
//  Created by 栗国聚 on 18/10/29.
//  Copyright © 2018年 伟宏科技有限公司. All rights reserved.
//


#import "ViewController.h"
#import "ClearBtn.h"

#import "CustomTextField.h"

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@interface ViewController ()

//@property (nonatomic ,strong)UITextField *nameTextField;
//
//@property (nonatomic ,strong)ClearBtn *clearView;

@property (nonatomic ,strong)UIView *blackViews;

@property (nonatomic,strong)CustomTextField *textFeild;

@property (nonatomic,strong)CustomTextField *pwdTextFeild;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    [self.view addSubview:self.nameTextField];
//    [self.view addSubview:self.clearView];
    
    [self.view addSubview:self.textFeild];
    self.textFeild.frame =CGRectMake(30, 120,250, 30);
    
    [self.view addSubview:self.pwdTextFeild];
    self.pwdTextFeild.frame =CGRectMake(30, 200,300, 30);
    
    [self.view addSubview:self.blackViews];
}

//- (ClearBtn *)clearView {
//
//    if (_clearView == nil) {
//
//
//        WS(weakSelf);
//        _clearView = [[ClearBtn alloc]initWithFrame:CGRectMake(50, 200, 60, 60)];
//
//        _clearView.blockBtn = ^(BOOL isYes){
//
//            if (isYes) {
//
//                 weakSelf.nameTextField.text = @"";
//                [weakSelf.clearView removeFromSuperview];
//            }
//
//        };
//    }
//    return _clearView;
//}

-(CustomTextField *)textFeild {
    if (!_textFeild) {
        _textFeild =[[CustomTextField alloc]init];
    }
    return _textFeild;
}

-(CustomTextField *)pwdTextFeild {
    if (!_pwdTextFeild) {
        _pwdTextFeild =[[CustomTextField alloc]init];
    }
    return _pwdTextFeild;
}

//- (UITextField *)nameTextField {
//
//    if (_nameTextField == nil) {
//
//        _nameTextField = [[UITextField alloc]initWithFrame:CGRectMake(30, 120,250, 30)];
//        _nameTextField.text = @"248238948";
//        _nameTextField.borderStyle = UITextBorderStyleLine;
//        _nameTextField.textColor = [UIColor redColor];
//        _nameTextField.font = [UIFont systemFontOfSize:14.0];
//
//
//        [_nameTextField addTarget:self action:@selector(changeValue:) forControlEvents:(UIControlEventEditingChanged)];
//
//    }
//    return _nameTextField;
//}

//- (void)changeValue:(UITextField *)text {
//
//    if (_nameTextField.text.length >0) {
//
//
//        [self.clearView removeFromSuperview];
//        [self.view addSubview:self.clearView];
//
//
//    }else {
//
//        [self.clearView removeFromSuperview];
//    }
//}


- (UIView *)blackViews {
    
    if (_blackViews == nil) {
        
        _blackViews = [[UIView alloc]initWithFrame:CGRectMake(40, 300, 100, 30)];
        _blackViews.backgroundColor = [UIColor blackColor];
        
        UIBezierPath *maskPath  =[UIBezierPath bezierPathWithRoundedRect:_blackViews.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(6, 6)];
        CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
        maskLayer.frame = _blackViews.bounds;
        maskLayer.path = maskPath.CGPath;
        _blackViews.layer.mask = maskLayer;
        
//        UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view2.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
//        CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
//        maskLayer.frame = view2.bounds;
//        maskLayer.path = maskPath.CGPath;
//        view2.layer.mask = maskLayer;
    }
    return _blackViews;
}


@end
