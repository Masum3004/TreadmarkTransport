//
//  OperationViewController.h
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 06/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MFSideMenu.h"

@interface OperationViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITabBar *operationTabbar;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tabbarHeightConstraints;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@end
