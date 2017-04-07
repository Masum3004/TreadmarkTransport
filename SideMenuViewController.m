//
//  SideMenuViewController.m
//  MFSideMenuDemo
//
//  Created by Michael Frederick on 3/19/12.

#import "SideMenuViewController.h"
#import "MFSideMenu.h"
#import "OperationViewController.h"
#import "MenuRowTableViewCell.h"

@implementation SideMenuViewController

#pragma mark -
#pragma mark - UITableViewDataSource

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    return [NSString stringWithFormat:@"Section %ld", (long)section];
//}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSArray *array = [NSArray arrayWithObjects:@"",@"OPERATIONS",@"HISTORY",@"MY TRUCK",@"MEDICAL CHECK",@"INBOX",@"MY PROFILE", nil];
    
    NSString *CellIdentifier = @"Cell";
    
    if (indexPath.row == 0) {
        CellIdentifier = @"Cell1";
    }
    MenuRowTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        
        
        cell = [[MenuRowTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
    }
    cell.lblMenuTitle.text = [array objectAtIndex:indexPath.row];
    
    cell.imageProfile.layer.cornerRadius = 30.0f;
    cell.imageProfile.clipsToBounds = YES;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        
        return 146;
    }
    else {
        
        return 62;
    }
}

#pragma mark -
#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSArray *array = [NSArray arrayWithObjects:@"OPERATION",@"OPERATION",@"HISTORY",@"OPERATION",@"OPERATION",@"OPERATION",@"OPERATION", nil];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:[array objectAtIndex:indexPath.row]];
    
    UINavigationController *navigationController = self.menuContainerViewController.centerViewController;
    NSArray *controllers = [NSArray arrayWithObject:viewController];
    
    navigationController.viewControllers = controllers;
    [self.menuContainerViewController setMenuState:MFSideMenuStateClosed];
}

@end
