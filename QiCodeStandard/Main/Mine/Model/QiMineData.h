//
//  QiMineData.h
//  QiCodeStandard
//
//  Created by QiShare on 2018/8/2.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, QiMineDataType) {
    QiMineDataTypeDefault,//!< 默认类型
    QiMineDataTypeOne,//!< 类型1
    QiMineDataTypeTwo,//!< 类型2
};

@interface QiMineData : NSObject

@property (nonatomic, copy) NSString *title;//!< 标题文本
@property (nonatomic, copy) NSString *detail;//!< 细节文本
@property (nonatomic, assign) QiMineDataType type;//!< 数据类型

/**
 @brief QiMineData初始化方法
 @param dic 初始化数据源字典
 @return QiMineData实例
 */
- (instancetype)initWithDic:(NSDictionary *)dic;

@end
