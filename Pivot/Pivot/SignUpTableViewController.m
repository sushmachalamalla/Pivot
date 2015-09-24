//
//  SignUpTableViewController.m
//  Pivot
//
//  Created by Sushma Reddy on 9/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

#import "SignUpTableViewController.h"




@implementation SignUpTableViewController
@synthesize signUpUserName;
@synthesize signUpEmail;
@synthesize signUpPassword;
@synthesize signUpPasswordReentry;

- (void)viewDidLoad {
    [super viewDidLoad];
       
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

    return 5;
}



    
 - (IBAction)signUpButton:(id)sender {
    
    NSString *userEnteredUsername = signUpUserName.text;
    NSString *userEnteredEmail = signUpEmail.text;
    NSString *userEnteredPassword = signUpPassword.text;
    NSString *userEnteredPasswordReEntry = signUpPasswordReentry.text;

     
     FireBaseAPIClass *APIRef   =   [[FireBaseAPIClass alloc]init];
     [APIRef SignUpMethod:userEnteredEmail pwd:userEnteredPassword];
     
     
    
     

}
@end
