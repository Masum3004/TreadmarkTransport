//
//  OperationViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 06/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "OperationViewController.h"

@interface OperationViewController ()

@end

@implementation OperationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showLeftMenuPressed:(id)sender {
    
    [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
}


@end
