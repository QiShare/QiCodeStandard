//
//  QiMineData.m
//  QiCodeStandard
//
//  Created by QiShare on 2018/8/2.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "QiMineData.h"

@implementation QiMineData

- (instancetype)initWithDic:(NSDictionary *)dic {
    
    self = [super init];
    
    if (self) {
        
        _title = dic[@"title"];
        _detail = dic[@"detail"];
    }
    
    return self;
}

@end
