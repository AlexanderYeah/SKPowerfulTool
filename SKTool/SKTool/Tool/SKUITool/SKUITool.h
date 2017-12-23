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


@end
