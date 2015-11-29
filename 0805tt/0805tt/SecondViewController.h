//
//  SecondViewController.h
//  0805tt
//
//  Created by qianfeng on 15/8/4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SecondViewContollerDelegate <NSObject>

//-(void)changColor:(UIColor *)color;

-(void)wButton2:(CGFloat)fontSize andColor:(UIColor *)color;

@end
@interface SecondViewController : UIViewController

@property(nonatomic,weak)id<SecondViewContollerDelegate>delegate;

@end
