//
//  SignInTableViewController.m
//  Pivot
//
//  Created by Sushma Reddy on 9/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

#import "SignInTableViewController.h"



@implementation SignInTableViewController

@synthesize signInEmail;
@synthesize signInPassword;

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

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}



- (IBAction)signInButton:(id)sender {
    
    BOOL isValid;
    
    if (signInEmail.hasText &&signInPassword.hasText) {
        
        NSString *userEmail = signInEmail.text;
        NSString *userPassword = signInPassword.text;
        
        FireBaseAPIClass *APIRef   =   [[FireBaseAPIClass alloc]init];
       isValid = [APIRef SignInMethod:userEmail pwd:userPassword];
    
    if (isValid) {
        NSLog(@"success");
        
    }
    else NSLog(@"Invalid Credentials");
  
    }
    else NSLog(@"Enter Email and password");
     
    
}
@end
