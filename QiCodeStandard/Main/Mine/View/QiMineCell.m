//
//  QiMineCell.m
//  QiCodeStandard
//
//  Created by QiShare on 2018/8/2.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "QiMineCell.h"

@interface QiMineCell()

@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *detailLabel;

@end

@implementation QiMineCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        _iconView = [[UIImageView alloc] initWithFrame:CGRectZero];
        [self.contentView addSubview:_iconView];
        
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel.font = [UIFont systemFontOfSize:16.0];
        _titleLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_titleLabel];
        
        _detailLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _detailLabel.font = [UIFont systemFontOfSize:14.0];
        _detailLabel.textColor = [UIColor grayColor];
        [self.contentView addSubview:_detailLabel];
    }
    
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    CGFloat margin = 10.0;
    CGFloat padding = 10.0;
    CGFloat MaxHeight = self.contentView.frame.size.height;
    CGFloat MaxWidth = self.contentView.frame.size.width;
    
    _iconView.frame = CGRectMake(margin, margin, 35, 35);
    _iconView.layer.cornerRadius = _iconView.frame.size.width / 2;
    _iconView.layer.masksToBounds = YES;
    
    [_titleLabel sizeToFit];
    _titleLabel.frame = CGRectMake(_iconView.frame.origin.x + _iconView.frame.size.width + padding, .0, 60.0, MaxHeight);
    
    [_detailLabel sizeToFit];
    _detailLabel.frame = CGRectMake(_titleLabel.frame.origin.x + _titleLabel.frame.size.width + padding, MaxHeight * 0.5, MaxWidth - _titleLabel.frame.size.width - padding * 2 - margin *2, MaxHeight * 0.5);
}


#pragma mark - Public functions

- (void)setCellData:(QiMineData *)cellData {
    
    _cellData = cellData;
    
    _iconView.image = [UIImage imageNamed:@"qishare"];
    _titleLabel.text = cellData.title;
    _detailLabel.text = cellData.detail;
}

@end
