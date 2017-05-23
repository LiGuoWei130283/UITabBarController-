//
//  DMMainViewController.m
//  demo
//
//  Created by 啾 on 2017/3/10.
//  Copyright © 2017年 qweewq. All rights reserved.
//

#import "DMMainViewController.h"
#import "DMNavigationViewController.h"
#import "AnimationManager.h"

@interface DMMainViewController ()<UITabBarControllerDelegate>



@end

@implementation DMMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;

    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor whiteColor];
    
    [self setChildchildViewController:vc index:0 title:@"我是A"];
    
    [self setChildchildViewController:[[UITableViewController alloc] init] index:1 title:@"我是B"];
    [self setChildchildViewController:[[UIViewController alloc] init] index:2 title:@"我是C"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setChildchildViewController:(UIViewController *)viewController index:(NSInteger)index title:(NSString *)title {
    
    
    
    viewController.title = title;
    
    DMNavigationViewController *naviVc = [[DMNavigationViewController alloc] initWithRootViewController:viewController];
    naviVc.index = index;
    [self addChildViewController:naviVc];
    
    
}

// 动画
- (nullable id <UIViewControllerAnimatedTransitioning>)tabBarController:(UITabBarController *)tabBarController animationControllerForTransitionFromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    
    
    return [[AnimationManager alloc] init];
}


@end
