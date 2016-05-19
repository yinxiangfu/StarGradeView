//
//  StarView.m
//  Day_10_work
//
//  Created by mac on 14-12-23.
//  Copyright (c) 2014年 xiangfu. All rights reserved.
//

#import "StarView.h"

@implementation StarView
{
    UIImageView * _frontImgView;
    UIImageView * _backImagView;

}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _backImagView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 65, 23)];
        _backImagView.image = [UIImage imageNamed:@"StarsBackground"];
        [self addSubview:_backImagView];
        
        _frontImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0 , 65, 23)];
        _frontImgView.image = [UIImage imageNamed:@"StarsForeground"];
        [self addSubview:_frontImgView];
        
        _backImagView.contentMode = UIViewContentModeLeft;
        _frontImgView.contentMode = UIViewContentModeLeft;
        _frontImgView.clipsToBounds = YES;
    }
    return self;
}
- (void)setRating:(CGFloat)rating
{
    _rating = rating;
    _frontImgView.frame = CGRectMake(0, 0, _rating/5.0*65, 23);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
