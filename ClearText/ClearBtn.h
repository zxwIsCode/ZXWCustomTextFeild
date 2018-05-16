//
//  ClearBtn.h
//  ClearText
//
//  Created by 栗国聚 on 18/10/29.
//  Copyright © 2018年 伟宏科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^clearBlock)(BOOL );

@interface ClearBtn : UIView

@property (nonatomic)clearBlock blockBtn;

@end
