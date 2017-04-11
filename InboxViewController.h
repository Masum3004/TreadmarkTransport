//
//  InboxViewController.h
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 11/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InboxViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *inboxTableView;
@property (weak, nonatomic) IBOutlet UITabBar *InboxTabbar;
@property (weak, nonatomic) IBOutlet UILabel *lblTitleNavigation;

@end
