//
//  AddPostTableViewController.m
//  Pivot
//
//  Created by Sushma Reddy on 9/24/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

#import "AddPostTableViewController.h"

@interface AddPostTableViewController ()

@end

@implementation AddPostTableViewController
@synthesize AddPostFrom;
@synthesize  AddPostTo;
@synthesize AddPostContact;
@synthesize AddPostPicker;
@synthesize AddPostDetails;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 4;
}


- (IBAction)AddPostSaveButton:(id)sender {
    
     BOOL isValid;
    
    NSString *from = AddPostFrom.text;
    NSString *to = AddPostTo.text;
    NSString *contact = AddPostContact.text;
    NSString *Details = AddPostDetails.text;
    
    FireBaseAPIClass *ref = [[FireBaseAPIClass alloc]init];
    
    isValid = [ref AddPostMethod:from to:to contact:contact Details:Details];
    
    if (isValid) {
        NSLog(@"data saved");
    }
    else NSLog(@"Data Not saved");
}
@end
