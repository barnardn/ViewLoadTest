//
//  ViewController.m
//  ViewLoadTest
//
//  Created by Norm Barnard on 11/29/15.
//  Copyright © 2015 Clamdango. All rights reserved.
//

#import "FromNibView.h"
#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) FromNibView *fromNibView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FromNibView *fnv = [[[UINib nibWithNibName:NSStringFromClass([FromNibView class]) bundle:nil] instantiateWithOwner:nil options:nil] firstObject];
    self.fromNibView = fnv;
    [self.view addSubview:self.fromNibView];
    self.fromNibView.title = @"View Controller Title";
}


- (void)viewDidLayoutSubviews {
    self.fromNibView.frame = CGRectMake(0.0f, 0.0f, CGRectGetWidth(self.view.bounds), CGRectGetMidY(self.view.bounds));
}

@end
