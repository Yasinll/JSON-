//
//  MYMessageModel.m
//  03.JSON到自定义对象
//
//  Created by 浅爱 on 16/3/2.
//  Copyright © 2016年 my. All rights reserved.
//

#import "MYMessageModel.h"

@implementation MYMessageModel

+ (instancetype)modelWithDictionary:(NSDictionary *)dic {

    MYMessageModel *model = [[MYMessageModel alloc] init];
    
    [model setValuesForKeysWithDictionary:dic];
    
    
    return model;

}


- (NSString *)description {

    return [NSString stringWithFormat:@"%@ {messageid = %d,message = %@}", [super description], self.messageID.intValue, self.message];

}

@end
