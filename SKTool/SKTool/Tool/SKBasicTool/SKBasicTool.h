//
//  SKBasicTool.h
//  SKTool
//
//  Created by Alexander on 2017/12/25.
//  Copyright © 2017年 AY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface SKBasicTool : NSObject
/** MARK: 获取当前的时间 type 值最大为5 值越大格式越长*/
+ (NSString *)getCurrentTimeWithType:(NSUInteger)type;
/** MARK:  将时间戳字符串转换为时间 */
+ (NSString *)changeTimestampWithStr:(NSString *)stamp;
/** MARK:  输入省份的名字 获取对应的省份编码code */
+ (NSString *)getProviceCodeWithString:(NSString *)provinceStr;
/**  MARK: 输入城市的名字 获取对应的城市编码code */
+ (NSString *)getCityCodeWithString:(NSString *)cityStr;
/** MARK: 输入区域的名字 获取对应的区域编码code */
+ (NSString *)getAreaCodeWithString:(NSString *)areaStr;
/** MARK:  判断手机号是否是正确的手机号码  如果运营商新增加号段的话 也要加进去，否则就会有问题 */
+ (BOOL)isMobileNumber:(NSString *)mobileNum;
/** MARK:  判断是否是银行卡号 */
+ (BOOL)isBankCard:(NSString *)cardNumber;
/** MARK: 移除一个字符串的空格和换行*/
+ (NSString *)removeSpaceAndLineFromStr:(NSString *)targetStr;
/** MARK:  改变一个字符串指定起始结束位置的颜色 大小 */
+ (NSMutableAttributedString *)changeStringColorWithString:(NSString *)str Color:(UIColor *)color fontSize:(CGFloat)font startIndex:(NSInteger)startIdx endIndex:(NSInteger)endIdx;
/**MARK: 计算一个Lable的文本宽高*/
+ (CGSize)getLblContentSizeWithString:(NSString *)content width:(CGFloat)width height:(CGFloat)height fontSize:(CGFloat)fontSize;



@end
