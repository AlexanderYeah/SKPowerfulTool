//
//  SKAudioTool.m
//  02 播放音效
//
//  Created by g1game on 16/8/3.
//  Copyright © 2016年 AlexanderYe. All rights reserved.
//

#import "SKAudioTool.h"
#import <AVFoundation/AVFoundation.h>

@implementation SKAudioTool

static NSMutableDictionary *_soundDic;

+(void)initialize
{
    _soundDic = [NSMutableDictionary dictionary];
}

+(void)playSoundWithSoundName:(NSString *)soundName
{
    
    // 1 创建soundID
    SystemSoundID sID = 0;
    // 2 尝试从字典中去取得soundID，如果没有，就创建一个，存放到字典中去。这样就避免反复创建
    sID = [[_soundDic objectForKey:soundName] unsignedIntValue];
    if (sID == 0) { // 第一次没有取到，创建一个
        // 2.1 获取文件的路径
        NSURL *url = [[NSBundle mainBundle]URLForResource:soundName withExtension:nil];
        CFURLRef urlRef = (__bridge CFURLRef)(url);
        
        // 2.2 创建sid
        AudioServicesCreateSystemSoundID(urlRef, &sID);
        //  2.3 将sid 保存到字典中去
        [_soundDic setObject:@(sID) forKey:soundName];
    }
    
    // 3 播放音效
    AudioServicesPlaySystemSound(sID);
    
    

}

@end
