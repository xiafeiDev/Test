//
//  SecondViewController.m
//  0805tt
//
//  Created by qianfeng on 15/8/4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FirstViewController.h"
@interface SecondViewController ()<ThirdViewContollerDelegate>
@property(nonatomic,strong) UIButton *button;
@property(nonatomic,strong) UIButton *button2;
@property(nonatomic,strong)UILabel *label;
@end


@implementation SecondViewController


-(void)viewWillAppear:(BOOL)animated{
    
    self.navigationController.navigationBarHidden=NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    
    
    _button=[UIButton buttonWithType:UIButtonTypeSystem];
    _button.frame=CGRectMake(30, 320, 80, 40);
    //[_button setTitle:@"好" forState:UIControlStateNormal];
    _button.backgroundColor=[UIColor brownColor];
    [_button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button];
    
    
    _button2=[UIButton buttonWithType:UIButtonTypeSystem];
    _button2.frame=CGRectMake(120, 320, 80, 40);
    //[_button setTitle:@"好" forState:UIControlStateNormal];
    _button2.backgroundColor=[UIColor blueColor];
    [_button2 addTarget:self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button2];
    
    _label=[[UILabel alloc]init];
    _label.frame=CGRectMake(30, 120, 180, 40);
  _label.text=@"123";
    _label.backgroundColor=[UIColor whiteColor];
    _label.backgroundColor=[UIColor brownColor];
        [self.view addSubview:_label];
}




-(void)click{

    ThirdViewController *tv=[[ThirdViewController alloc]init];
    tv.delegate=self;

    [self.navigationController pushViewController:tv animated:YES];

}

-(void)click2{
    

    CGFloat a=23;
    if([_delegate respondsToSelector:@selector(wButton2:andColor:)]){
        
        [_delegate wButton2:a andColor:self.view.backgroundColor];
        [self.navigationController popToRootViewControllerAnimated:YES];
    
}
}

-(void)wButton:(CGFloat)fontSize andColor:(UIColor *)color{
    
    
    self.view.backgroundColor=color;
    
    _label.font=[UIFont boldSystemFontOfSize:fontSize];
}

@end
