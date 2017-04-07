//
//  LoginViewController.h
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 05/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet  UITextField*txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomSpaceConstraints;
@end
