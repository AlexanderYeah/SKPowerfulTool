//
//  SKNetTool.m
//  SKTool
//
//  Created by AY on 2018/1/9.
//  Copyright © 2018年 AY. All rights reserved.
//

#import "SKNetTool.h"
#import "AFNetworking.h"

static SKNetTool * _tool = nil;

@interface SKNetTool()

/** 网络请求工具 */
@property (nonatomic,strong)AFHTTPSessionManager *mgr;

@end


@implementation SKNetTool


- (AFHTTPSessionManager *)mgr
{
	if (!_mgr) {
		
		_mgr = [AFHTTPSessionManager manager];

	}
	return _mgr;
}

#pragma mark - 实例化 请求工具
+(instancetype)tool
{
	return [[self alloc]init];
}

#pragma mark - alloc method
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		_tool = [super allocWithZone:zone];
	});
	return _tool;
}



#pragma mark - get 请求

- (void)GET:(NSString *)UrlStr paras:(id)paras succ:(SuccessNetBlock)succ fail:(FailedNetBlock)fail
{
	
	
	_mgr.requestSerializer = [AFHTTPRequestSerializer serializer];
	_mgr.responseSerializer = [AFHTTPResponseSerializer serializer];
	_mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"image/jpeg",@"application/json", @"text/html", @"text/plain", nil];
	// 直接调用AFN的 GET 方法
	[self.mgr GET:UrlStr parameters:paras progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
		// 成功
		succ(responseObject);
		
	} failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
		// 失败
		fail(error);
	}];

}


#pragma mark - POST 请求
- (void)POST:(NSString *)UrlStr paraType:(SKRequetType)type paras:(id)paras succ:(SuccessNetBlock)succ fail:(FailedNetBlock)fail
{
	// 请求数据的类型
	if (type == SKRequestTypeJSON) {
		_mgr.requestSerializer = [AFJSONRequestSerializer serializer];
	}else if(type == SKRequestTypeFORM){
		_mgr.requestSerializer = [AFHTTPRequestSerializer serializer];
	}
	_mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"image/jpeg",@"application/json", @"text/html", @"text/plain", nil];
	
	[self.mgr POST:UrlStr parameters:paras progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
		succ(responseObject);
	} failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
		fail(error);
	}];
	
	
	
}

#pragma mark - 上传图片
- (void)ImagePOST:(NSString *)UrlStr paraType:(SKRequetType)type paras:(id)paras image:(ImageBodyBlock)imgBody succ:(SuccessNetBlock)succ fail:(FailedNetBlock)fail
{
	// 请求数据的类型
	if (type == SKRequestTypeJSON) {
		_mgr.requestSerializer = [AFJSONRequestSerializer serializer];
	}else if(type == SKRequestTypeFORM){
		_mgr.requestSerializer = [AFHTTPRequestSerializer serializer];
	}
	
	_mgr.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"image/jpeg",@"application/json", @"text/html", @"text/plain", nil];
	[self.mgr POST:UrlStr parameters:paras constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
		// 图片
		imgBody(formData);
		
	} progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
		// 成功的回调
		succ(responseObject);
	} failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
		// 失败的回调
		fail(error);
	}];
	

}



@end
