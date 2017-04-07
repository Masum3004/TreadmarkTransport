//
//  LoginFormTableViewCell.h
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 05/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginFormTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UITextField *txtCell1;
@property (weak, nonatomic) IBOutlet UITextField *txtCell2;
@property (weak, nonatomic) IBOutlet UILabel *lblCell3;
@property (weak, nonatomic) IBOutlet UIView *sepraterView;
@property (weak, nonatomic) IBOutlet UISwitch *cell2Switch;
@property (weak, nonatomic) IBOutlet UILabel *lblCell3Number;
@end
