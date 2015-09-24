//
//  SignUpTableViewController.h
//  Pivot
//
//  Created by Sushma Reddy on 9/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Firebase/Firebase.h>
#import "FireBaseAPIClass.h"
@interface SignUpTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITextField *signUpUserName;
@property (strong, nonatomic) IBOutlet UITextField *signUpEmail;
@property (strong, nonatomic) IBOutlet UITextField *signUpPassword;
@property (strong, nonatomic) IBOutlet UITextField *signUpPasswordReentry;
- (IBAction)signUpButton:(id)sender;



@end
