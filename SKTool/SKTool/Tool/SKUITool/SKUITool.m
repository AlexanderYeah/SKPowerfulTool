//
//  SKUITool.m
//  SKTool
//
//  Created by AY on 2017/12/23.
//  Copyright © 2017年 AY. All rights reserved.
//

#import "SKUITool.h"

@implementation SKUITool


/**  弹出提示框给你 */
+ (void)showAlertViewWithTitle:(NSString *)title content:(NSString *)content ensureBtnTitle:(NSString *)ensureBtnTitle inController:(UIViewController *)vc {
	
	UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:content preferredStyle:UIAlertControllerStyleAlert];
	
	UIAlertAction *ac = [UIAlertAction actionWithTitle:ensureBtnTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
		
	}];
	
	[alertVC addAction:ac];
	
	
	[vc presentViewController:alertVC animated:YES completion:nil];
}



@end
