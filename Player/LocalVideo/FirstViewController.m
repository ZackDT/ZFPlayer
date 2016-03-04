//
//  FirstViewController.m
//  Player
//
//  Created by 任子丰 on 15/11/9.
//  Copyright © 2015年 任子丰. All rights reserved.
//

#import "FirstViewController.h"
#import "NetMoviePlayerViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [UIApplication sharedApplication].statusBarHidden = NO;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:YES];
}
- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NetMoviePlayerViewController *movie = (NetMoviePlayerViewController *)segue.destinationViewController;
    NSURL *URL = [NSURL URLWithString:@"http://baobab.cdn.wandoujia.com/14468618701471.mp4"];
    movie.videoURL = URL;
}


@end