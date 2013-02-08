//
//  detailAppDelegate.h
//  BasicTableView
//
//  Created by Pawan Dhamane on 08/02/13.
//  Copyright (c) 2013 the1pawan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TableViewController;
@interface detailAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) TableViewController *tableView;
@end
