//
//  SKNetTool.h
//  SKTool
//
//  Created by AY on 2018/1/9.
//  Copyright © 2018年 AY. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SuccessNetBlock)(id responseObj);
typedef void(^FailedNetBlock)(id responseObj);
typedef void(^ImageBodyBlock)(id imageBody);


typedef NS_ENUM(NSInteger,SKRequetType){
	SKRequestTypeJSON = 0,
	SKRequestTypeFORM = 1
};

@interface SKNetTool : NSObject


/** 单例创建请求工具 */
+ (instancetype)tool;

/** GET 请求 */
- (void)GET:(NSString *)UrlStr paras:(id)paras succ:(SuccessNetBlock)succ fail:(FailedNetBlock)fail;

/** POST 请求 */
- (void)POST:(NSString *)UrlStr paraType:(SKRequetType)type paras:(id)paras succ:(SuccessNetBlock)succ fail:(FailedNetBlock)fail;

/** 图片上传 POST 请求 */
- (void)ImagePOST:(NSString *)UrlStr paraType:(SKRequetType)type paras:(id)paras image:(ImageBodyBlock)imgBody succ:(SuccessNetBlock)succ fail:(FailedNetBlock)fail;













@end

