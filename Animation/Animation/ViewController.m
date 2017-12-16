//
//  ViewController.m
//  Animation
//
//  Created by 谭登 on 2017/12/16.
//  Copyright © 2017年 谭登. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *domeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self opactityAnimation ];
    [self scaleAnimation];
    [self backgroundAnimatio];
}

// MARK: - 透明度的变化
-(void)opactityAnimation{
    
    CABasicAnimation * anima = [CABasicAnimation animationWithKeyPath: @"opacity"];
    anima.fromValue = @1.0;
    anima.toValue = @0.2;
    anima.duration = 1.0f;
    [_domeView.layer addAnimation:anima forKey:@"opacityAnimation"];
}

// MARK: - 缩放动画
-(void)scaleAnimation{
    CABasicAnimation * anima = [CABasicAnimation animationWithKeyPath:@"transform.scale"]; //同上
    anima.fromValue = @1.0;
    anima.toValue = @0.2;
    anima.duration = 1.0f;
    [_domeView.layer addAnimation:anima forKey:@"scaleAnimation"];
    NSArray * arr = @[@"0"];
    NSLog(@"%@",arr[1]);
}

// MARK: - 背景颜色的变化动画
-(void)backgroundAnimatio{
    CABasicAnimation * anima = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    anima.toValue = (id)[UIColor greenColor].CGColor;
    anima.duration = 1.0;
    [_domeView.layer addAnimation:anima forKey:@"backgroundColorAnimation"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
