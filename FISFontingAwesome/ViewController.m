//
//  ViewController.m
//  FISFontingAwesome
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) FAKFontAwesome *starIcon;
@property (strong, nonatomic) FAKFoundationIcons *bookmarkIcon;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // set custom appearance of a button
    self.starIcon = [FAKFontAwesome starIconWithSize:200];
    NSAttributedString *buttonArrtibutes = [self.starIcon attributedString];
    [self.button setAttributedTitle:buttonArrtibutes forState:normal];
}

- (IBAction)buttonTapped:(id)sender {
    // changing appearance of a button on click
    self.bookmarkIcon  = [FAKFoundationIcons bookmarkIconWithSize:200];
    [self.bookmarkIcon addAttribute:NSForegroundColorAttributeName value:[UIColor yellowColor]];
    NSAttributedString *buttonArrtibutes = [self.bookmarkIcon attributedString];
    [self.button setAttributedTitle:buttonArrtibutes forState:normal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
