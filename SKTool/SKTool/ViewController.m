//
//  ViewController.m
//  SKTool
//
//  Created by AY on 2017/12/23.
//  Copyright © 2017年 AY. All rights reserved.
//

#import "ViewController.h"
#import "SKTool.h"
#import "SKUITool.h"
#import "SKBasicTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	// NSLog(@"%@",[SKBasicTool removeSpaceAndLineFromStr:@"this is   me"]);
	

	
	UIView *view2  = [SKUITool getGradientViewWithColorArray:[NSArray arrayWithObjects:(id)[[UIColor cyanColor] CGColor], (id)[[UIColor whiteColor] CGColor], nil]];
	view2.frame = CGRectMake(200, 200, 100, 100);
	[self.view addSubview:view2];
	
	
	
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
	[SKUITool showAlertViewWithTitle:@"Hello" content:@"How Are U" ensureBtnTitle:@"确定" inController:self];
	

}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
