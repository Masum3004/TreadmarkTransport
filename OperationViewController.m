//
//  OperationViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 06/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "OperationViewController.h"


#define STORYBARD_ID_ARRAY @[@"NEW_REQUEST_LIST", @"IN_PROCESS", @"CURRENT_DRIVE"]

@interface OperationViewController ()

@end

@implementation OperationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tabbarHeightConstraints.constant = 49.0;
   
    [_operationTabbar setSelectedItem:[_operationTabbar.items objectAtIndex:0]];

   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showLeftMenuPressed:(id)sender {
    
    [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    
    
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:[STORYBARD_ID_ARRAY objectAtIndex:item.tag]];
   
    [self addChildViewController:vc];
    
    vc.view.frame = CGRectMake(0, 0, self.containerView.frame.size.width, self.containerView.frame.size.height);
    
    [self.containerView addSubview:vc.view];
    

}
@end
