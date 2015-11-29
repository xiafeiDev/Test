//
//  ThirdViewController.m
//  0805tt
//
//  Created by qianfeng on 15/8/4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "ThirdViewController.h"


@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor=[UIColor greenColor];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(30, 120, 80, 30);
    [button setTitle:@"改变颜色" forState:UIControlStateNormal];
    button.backgroundColor=[UIColor brownColor];
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    
    
}

-(void)click:(UIButton *)button{
    CGFloat a=23;
    if([_delegate respondsToSelector:@selector(wButton:andColor:)]){
    
        [_delegate wButton:a andColor:[UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1]];
    }

    [self.navigationController popViewControllerAnimated:YES];
 

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
