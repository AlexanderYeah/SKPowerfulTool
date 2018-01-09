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
#import "SKNetTool.h"


@interface ViewController ()

@property (nonatomic,strong)UIImageView *imgView;


@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	// NSLog(@"%@",[SKBasicTool removeSpaceAndLineFromStr:@"this is   me"]);
	

	
//	UIView *view2  = [SKUITool getGradientViewWithColorArray:[NSArray arrayWithObjects:(id)[[UIColor cyanColor] CGColor], (id)[[UIColor whiteColor] CGColor], nil]];
//	view2.frame = CGRectMake(200, 200, 100, 100);
//	[self.view addSubview:view2];
//

	_imgView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
	_imgView.backgroundColor = [UIColor redColor];
	[self.view addSubview:_imgView];
	
	
	
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//	[SKUITool showAlertViewWithTitle:@"Hello" content:@"How Are U" ensureBtnTitle:@"确定" inController:self];
	
	

	
	
	// get
//	[[SKNetTool tool] GET:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1516068262&di=4d3c90015177352ec49a55452c33e7c9&imgtype=jpg&er=1&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimage%2Fc0%253Dpixel_huitu%252C0%252C0%252C294%252C40%2Fsign%3Ded78b181df3f8794c7f2406ebb636b98%2F72f082025aafa40f34c69ce4a064034f78f01982.jpg" paras:nil succ:^(id responseObj) {
//		NSData *data = responseObj;
//		
//		self.imgView.image = [UIImage imageWithData:data];
//		
//	} fail:^(id responseObj) {
//	
//		
//		NSLog(@"failed-- %@",[responseObj description]);
//	}];


	// post
	
	// http://172.16.102.66:8001/CZshuiAPI/user/login.php?password=123456&username=dhj
//	NSDictionary *dic = @{@"username":@"dhj",@"password":@"123456"};
//	[[SKNetTool tool]POST:@"http://172.16.102.66:8001/CZshuiAPI/user/login.php?" paraType:SKRequestTypeJSON paras:dic succ:^(id responseObj) {
//		// 成功的回调
//		NSLog(@"%@",responseObj);
//	} fail:^(id responseObj) {
//		// 失败的回调
//		NSLog(@"%@",[responseObj description]);
//	}];
//	
	
	
	// 上传图片
//	[[SKNetTool tool]ImagePOST:@"" paraType:SKRequestTypeFORM paras:nil image:^(id imageBody) {
//		
//		UIImage *image = [UIImage imageNamed:@"3.png"];
//		imageBody = image;
//		
//	} succ:^(id responseObj) {
//		NSLog(@"%@",responseObj);
//	} fail:^(id responseObj) {
//		NSLog(@"%@",[responseObj description]);
//	}];

}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
