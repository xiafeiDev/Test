//
//  ThirdViewController.h
//  0805tt
//
//  Created by qianfeng on 15/8/4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol ThirdViewContollerDelegate <NSObject>

-(void)wButton:(CGFloat)fontSize andColor:(UIColor *)color;

@end

@interface ThirdViewController : UIViewController

@property(nonatomic,weak)id<ThirdViewContollerDelegate>delegate;

@end
