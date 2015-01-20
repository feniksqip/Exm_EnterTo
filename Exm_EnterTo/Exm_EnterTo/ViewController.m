//
//  ViewController.m
//  Exm_EnterTo
//
//  Created by Admin on 20.01.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_regView setHidden:YES];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:@"login"] != nil || [defaults objectForKey:@"password"] != nil) {
        [self performSegueWithIdentifier:@"closeZone" sender:self];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segment:(id)sender {
    UISegmentedControl *seg = (UISegmentedControl*) sender;
    NSInteger *index = (NSInteger*)[seg selectedSegmentIndex];
  //  NSInteger *index = seg.selectedSegmentIndex;
    if (index == 0) {
        [_regView setHidden:YES];
    } else {
        [_regView setHidden:NO];
    }
}
- (IBAction)loginBtn:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (![self.loginL.text isEqualToString:@""] || ![self.passL.text isEqualToString:@""]) {
    
    [defaults setObject:self.loginL.text forKey:@"login"];
    [defaults setObject:self.passL.text forKey:@"password"];
    [self performSegueWithIdentifier:@"closeZone" sender:self];
    }
}
- (IBAction)switch:(id)sender {
}
- (IBAction)regButton:(id)sender {
}
@end
