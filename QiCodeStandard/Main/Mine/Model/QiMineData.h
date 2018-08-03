//
//  QiMineData.h
//  QiCodeStandard
//
//  Created by QiShare on 2018/8/2.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, QiMineDataType) {
    QiMineDataTypeDefault,
    QiMineDataTypeOne,
    QiMineDataTypeTwo,
};

@interface QiMineData : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *detail;
@property (nonatomic, assign) QiMineDataType type;

- (instancetype)initWithDic:(NSDictionary *)dic;

@end
