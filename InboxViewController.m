//
//  InboxViewController.m
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 11/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import "InboxViewController.h"
#import "MFSideMenu.h"

#import "InboxTableViewCell.h"

@interface InboxViewController ()

@end

@implementation InboxViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_InboxTabbar setSelectedItem:[_InboxTabbar.items objectAtIndex:0]];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showLeftMenuPressed:(id)sender {
    
    [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    switch (self.InboxTabbar.selectedItem.tag) {
        case 0:
             return 8;
            break;
        case 1:
            return 3;
            break;
        case 2:
            return 2;
            break;
        default:
            return 0;
            break;
    }
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    InboxTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"INBOX_CELL"];
    
    switch (self.InboxTabbar.selectedItem.tag) {
            
        case 0:
           
            cell.btnFavourite.hidden = NO;
            [cell.btnFavourite setImage:[UIImage imageNamed:@"Favourite.png"] forState:UIControlStateNormal];
            [cell.btnTrash setImage:[UIImage imageNamed:@"Delete.png"] forState:UIControlStateNormal];
            break;
            
        case 1:
           
            cell.btnFavourite.hidden = NO;
            [cell.btnFavourite setImage:[UIImage imageNamed:@"fav_icon.png"] forState:UIControlStateNormal];
            [cell.btnTrash setImage:[UIImage imageNamed:@"Delete.png"] forState:UIControlStateNormal];
            [self.lblTitleNavigation setText:@"FAVOURITE"];
            break;
            
        case 2:
            
            cell.btnFavourite.hidden = YES;
            [cell.btnTrash setImage:[UIImage imageNamed:@"refresh.png"] forState:UIControlStateNormal];
            [self.lblTitleNavigation setText:@"TRASH"];
            break;
            
        default:
            break;
    }

    return cell;
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    
    
    [self.inboxTableView reloadData];
}

@end
