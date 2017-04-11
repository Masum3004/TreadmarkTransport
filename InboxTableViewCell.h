//
//  InboxTableViewCell.h
//  Trademark Tansport
//
//  Created by EXCELLENT2 on 11/04/17.
//  Copyright © 2017 EXCELLENT2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InboxTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblCellTitle;
@property (weak, nonatomic) IBOutlet UILabel *lblTime;
@property (weak, nonatomic) IBOutlet UIButton *btnTrash;
@property (weak, nonatomic) IBOutlet UIButton *btnFavourite;
@end
