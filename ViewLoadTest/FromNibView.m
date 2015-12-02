//
//  FromNibView.m
//  ViewLoadTest
//
//  Created by Norm Barnard on 11/29/15.
//  Copyright © 2015 Clamdango. All rights reserved.
//

#import "FromNibView.h"

@interface FromNibView()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *actionButton;

@end


@implementation FromNibView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    NSLog(@"Init with coder called");
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"awake from nib called");
    self.titleLabel.textColor = [UIColor redColor];
    [self.actionButton setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    [self.actionButton addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    self.backgroundColor = [UIColor colorWithRed:0 green:1.0f blue:0.0f alpha:0.09f];
    
}

- (IBAction)buttonTapped:(UIButton *)sender {
    NSLog(@"button tapped");
    self.titleLabel.text = @"Button Tapped!";
}

@dynamic title;

- (NSString *)title {
    return self.titleLabel.text;
}

- (void)setTitle:(NSString *)title {
    self.titleLabel.text = title;
}

@end
