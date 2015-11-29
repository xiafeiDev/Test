//
//  FirstViewController.m
//  0805tt
//
//  Created by qianfeng on 15/8/4.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface FirstViewController ()<SecondViewContollerDelegate>
 @property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIButton *button;
@end

@implementation FirstViewController

-(void)viewWillAppear:(BOOL)animated{
    
    self.navigationController.navigationBarHidden=YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor cyanColor];
    
  _button=[UIButton buttonWithType:UIButtonTypeSystem];
    _button.frame=CGRectMake(30, 120, 80, 30);
    _button.backgroundColor=[UIColor brownColor];
    [_button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_button];
    _button=[UIButton buttonWithType:UIButtonTypeSystem];
    _button.frame=CGRectMake(30, 320, 80, 40);
    //[_button setTitle:@"好" forState:UIControlStateNormal];
    _button.backgroundColor=[UIColor brownColor];
    [_button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button];
    
    _label=[[UILabel alloc]init];
    _label.frame=CGRectMake(30, 120, 180, 40);
    _label.text=@"123";
    _label.backgroundColor=[UIColor whiteColor];
    _label.backgroundColor=[UIColor brownColor];
    [self.view addSubview:_label];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    
    button.frame =CGRectMake(0, 0, 50, 50);
    
    button.center=self.view.center;
    
    button.backgroundColor = [UIColor redColor];
    
    [button addTarget:self action:@selector(BUTTON2Click:) forControlEvents:UIControlEventTouchUpInside];
    

    [self.view addSubview:button];

}

-(void)click{
//    ThirdViewController *tv1=[[ThirdViewController alloc]init];
//    tv1.delegate=self;
    
    SecondViewController *sv=[[SecondViewController alloc]init];
    sv.delegate =self;
    //UINavigationController * nv=[[UINavigationController alloc]initWithRootViewController:sv];
    [self.navigationController pushViewController:sv animated:YES];
    
}

-(void)wButton2:(CGFloat)fontSize andColor:(UIColor *)color{
    self.view.backgroundColor=color;
    
    _label.font=[UIFont boldSystemFontOfSize:fontSize];
}

//-(void)wButton:(CGFloat)fontSize andColor:(UIColor *)color{
//    
//    
//    
//}


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
