//
//  MenuRowTableViewCell.h
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 06/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuRowTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblMenuTitle;
@property (weak, nonatomic) IBOutlet UIImageView *imageProfile;
@property (weak, nonatomic) IBOutlet UILabel *lblProfileName;
@property (weak, nonatomic) IBOutlet UILabel *lblProfileEmail;
@end
