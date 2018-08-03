//
//  QiMineData.h
//  QiCodeStandard
//
//  Created by liusiqi on 2018/8/2.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QiMineData : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *detail;

- (instancetype)initWithDic:(NSDictionary *)dic;

@end
