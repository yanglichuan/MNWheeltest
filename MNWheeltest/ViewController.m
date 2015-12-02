//
//  ViewController.m
//  MNWheeltest
//
//  Created by qsit on 15-1-29.
//  Copyright (c) 2015年 qsit. All rights reserved.
//

#import "ViewController.h"
#import "MNWheelView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        MNWheelView *view=[[MNWheelView alloc]initWithFrame:CGRectMake(0, 80, self.view.frame.size.width, 520)];
    
        UIImage *image1=[UIImage imageNamed:@"1"];
        UIImage *image2=[UIImage imageNamed:@"2"];
        UIImage *image3=[UIImage imageNamed:@"3"];
        UIImage *image4=[UIImage imageNamed:@"4"];
        UIImage *image5=[UIImage imageNamed:@"5"];
        
//        view.imageNames=[NSArray arrayWithObjects:@"a",@"b",@"c",@"d", nil];  view.imageNames 和view.images 二选一
        view.images=[NSArray arrayWithObjects:image1,image2,image3,image4,image5, nil];
        view.backgroundColor=[UIColor clearColor];
        view.click=^(int i)
        {
            NSLog(@"单击了%d",i);
    
        };
        [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com 
