//
//  SKUITool.h
//  SKTool
//
//  Created by AY on 2017/12/23.
//  Copyright © 2017年 AY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface SKUITool : NSObject

/**  弹出提示框给你 */
+ (void)showAlertViewWithTitle:(NSString *)title content:(NSString *)content ensureBtnTitle:(NSString *)ensureBtnTitle inController:(UIViewController *)vc;

/** 改变一个textfieldholder的颜色以及大小 */
+ (UITextField *)changeTextfield:(UITextField *)textfield holderColor:(UIColor *)color holderFont:(CGFloat)fontSize;
@end



