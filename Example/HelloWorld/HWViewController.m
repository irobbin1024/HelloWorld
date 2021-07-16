//
//  HWViewController.m
//  HelloWorld
//
//  Created by QuVideoInc. on 07/16/2021.
//  Copyright (c) 2021 QuVideoInc.. All rights reserved.
//

#import "HWViewController.h"
@import HelloWorld;

@interface HWViewController ()

@end

@implementation HWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage * img = [UIImage HelloWorldImageNamed:@"xy_viva_dialog_close_btn"];
    NSLog(@"img");
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
