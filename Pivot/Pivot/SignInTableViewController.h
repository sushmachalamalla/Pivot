//
//  SignInTableViewController.h
//  Pivot
//
//  Created by Sushma Reddy on 9/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Firebase/Firebase.h>
#import "FireBaseAPIClass.h"

@interface SignInTableViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UITextField *signInEmail;

@property (strong, nonatomic) IBOutlet UITextField *signInPassword;

- (IBAction)signInButton:(id)sender;


@end
