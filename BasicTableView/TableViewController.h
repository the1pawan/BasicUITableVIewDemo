//
//  TableViewController.h
//  BasicTableView
//
//  Created by Pawan Dhamane on 08/02/13.
//  Copyright (c) 2013 the1pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *movieArray;
}
@end
