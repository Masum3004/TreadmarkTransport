//
//  LoginViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 05/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()<UITextFieldDelegate>
{
    UIColor *placeholderColor;
}
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initialize];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)initialize {
    
    placeholderColor = [UIColor colorWithRed:(170/255.0) green:(170/255.0) blue:(170/255.0) alpha:1.0];
    
    self.txtEmail.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.txtEmail.placeholder attributes:@{NSForegroundColorAttributeName: placeholderColor}];
    
     self.txtPassword.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.txtPassword.placeholder attributes:@{NSForegroundColorAttributeName: placeholderColor}];
    
   
    self.bottomSpaceConstraints.constant = 15.0f;
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    
    gradient.frame = self.view.bounds;
    gradient.colors = @[(id)[UIColor grayColor].CGColor, (id)[UIColor blackColor].CGColor];
    
    [self.view.layer insertSublayer:gradient atIndex:0];
}

- (IBAction)btnLogin:(id)sender {
    
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"LOGIN_FORM"];
    [self.navigationController pushViewController:viewController animated:YES];
    
}


#pragma mark - UITextfield Delegate

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
//    [textField resignFirstResponder];
//    [self.view endEditing:YES];
    return YES;
}

@end
