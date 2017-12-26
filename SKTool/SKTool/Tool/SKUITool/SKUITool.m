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

/** MARK: 改变textfield holer的字体 */
+(UITextField *)changeTextfield:(UITextField *)textfield holderColor:(UIColor *)color holderFont:(CGFloat)fontSize
{
	
	[textfield setValue:color forKeyPath:@"_placeholderLabel.textColor"];
	[textfield setValue:[UIFont boldSystemFontOfSize:fontSize] forKeyPath:@"_placeholderLabel.font"];
	return textfield;
}

/** MARK:返回一个渐变色的view color 要传CGColor */
+ (UIView *)getGradientViewWithColorArray:(NSArray *)colorArray{
	UIView *view = [[UIView alloc] init];
	CAGradientLayer *gradient = [CAGradientLayer layer];
	gradient.frame = view.bounds;
	gradient.colors = colorArray;
	[view.layer insertSublayer:gradient atIndex:0];
	return view;
}


















@end
