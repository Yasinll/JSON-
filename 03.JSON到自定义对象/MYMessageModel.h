//
//  MYMessageModel.h
//  03.JSON到自定义对象
//
//  Created by 浅爱 on 16/3/2.
//  Copyright © 2016年 my. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MYMessageModel : NSObject

// 服务器可能返回NULL， kvc过程不能给数据设置nil
// 网络数据模型中不要使用基本数据类型， int --> NSNumber，防止服务器传来nil
@property (strong, nonatomic) NSNumber *messageID;

@property (copy, nonatomic) NSString *message;


+ (instancetype)modelWithDictionary:(NSDictionary *)dic;

@end
