//
//  VehicleInspectionTableViewCell.h
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 06/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VehicleInspectionTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblCell2;
@property (weak, nonatomic) IBOutlet UISwitch *cell2Switch;
@property (weak, nonatomic) IBOutlet UITextView *txtCell2;
@property (weak, nonatomic) IBOutlet UILabel *lblCell2Number;

@property (weak, nonatomic) IBOutlet UILabel *lblCell3;
@property (weak, nonatomic) IBOutlet UIButton *btnCell3Good;
@property (weak, nonatomic) IBOutlet UIButton *btnCell3Bad;
@property (weak, nonatomic) IBOutlet UIButton *btnCell3Low;
@property (weak, nonatomic) IBOutlet UITextView *txtCell3;
@property (weak, nonatomic) IBOutlet UILabel *lblGood;
@property (weak, nonatomic) IBOutlet UILabel *lblBad;
@property (weak, nonatomic) IBOutlet UILabel *lblLow;

@property (weak, nonatomic) IBOutlet UILabel *lblCell1;

@property (weak, nonatomic) IBOutlet UILabel *lblCell4;

@end
