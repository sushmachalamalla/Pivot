//
//  AddPostTableViewController.h
//  Pivot
//
//  Created by Sushma Reddy on 9/24/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Firebase/Firebase.h>
#import "FireBaseAPIClass.h"

@interface AddPostTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITextField *AddPostFrom;

@property (strong, nonatomic) IBOutlet UITextField *AddPostTo;

@property (strong, nonatomic) IBOutlet UITextField *AddPostContact;
@property (strong, nonatomic) IBOutlet UIDatePicker *AddPostPicker;
@property (strong, nonatomic) IBOutlet UITextView *AddPostDetails;
- (IBAction)AddPostSaveButton:(id)sender;

@end
