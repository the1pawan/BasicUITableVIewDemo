//
//  TableViewController.m
//  BasicTableView
//
//  Created by Pawan Dhamane on 08/02/13.
//  Copyright (c) 2013 the1pawan. All rights reserved.
//

#import "TableViewController.h"
#import "MovieCell.h"
@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    movieArray = [NSArray arrayWithObjects:
                  @"Schindler's List",
                  @"The Godfather",
                  @"Million Dollar Baby",
                  @"Sarfarosh",
                  @"Rang De Basanti ",
                  @"Kal Ho Naa Ho",
                  @"Chak De! India",
                  @"Troy",
                  @"A Beautiful Mind",
                  @"Agneepath",
                  nil];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 61;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [movieArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CustomCellIdentifier = @"CustomCellIdentifier ";
	MovieCell *cell = (MovieCell *)[tableView dequeueReusableCellWithIdentifier: CustomCellIdentifier];
    if (cell == nil) {
		NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"MovieCell" owner:self options:nil];
		for (id oneObject in nib) if ([oneObject isKindOfClass:[MovieCell class]])
			cell = (MovieCell *)oneObject;
	}
	
	cell.MovieName.text=[movieArray objectAtIndex:indexPath.row];
     NSLog(@" Movie::%@",[movieArray objectAtIndex:indexPath.row]);
    NSString *imgname=[NSString stringWithFormat:@"%d.jpg",indexPath.row];
    [cell.MovieImage setImage:[UIImage imageNamed:imgname]];
	cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"Selected Movie::%@",[movieArray objectAtIndex:indexPath.row]);
}

@end
