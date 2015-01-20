//
//  ViewController.h
//  Exm_EnterTo
//
//  Created by Admin on 20.01.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)segment:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *regView;
@property (weak, nonatomic) IBOutlet UITextField *loginL;
@property (weak, nonatomic) IBOutlet UITextField *passL;
- (IBAction)loginBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *loginR;
@property (weak, nonatomic) IBOutlet UITextField *emailR;
@property (weak, nonatomic) IBOutlet UITextField *rassR;
@property (weak, nonatomic) IBOutlet UITextField *rePassR;
- (IBAction)switch:(id)sender;
- (IBAction)regButton:(id)sender;




@end

