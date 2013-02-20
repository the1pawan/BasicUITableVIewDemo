//
//  MovieCell.h
//  BasicTableView
//
//  Created by Pawan Dhamane on 14/02/13.
//  Copyright (c) 2013 the1pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell
{
    IBOutlet UIImageView *MovieImage;
    IBOutlet UILabel *MovieName;

}

@property (strong, nonatomic) UIImageView *MovieImage;
@property (strong, nonatomic) UILabel *MovieName;
@end
