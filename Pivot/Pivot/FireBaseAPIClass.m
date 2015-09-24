//
//  FireBaseAPIClass.m
//  Pivot
//
//  Created by Sushma Reddy on 9/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

#import "FireBaseAPIClass.h"

@implementation FireBaseAPIClass
@synthesize connectionVariable;


-(Firebase *)fireBaseReference{
Firebase *ref = [[Firebase alloc]initWithUrl:@"https://pivot.firebaseio.com"];
    return ref;
}
-(void)SignUpMethod:(NSString *)email pwd:(NSString *)password{
    
    Firebase *signUpRef =   [self fireBaseReference];
    
    [signUpRef createUser:email password:password
                withValueCompletionBlock:^(NSError *error, NSDictionary *result){
    if (error) {
        
    }
    else
    {
        NSString *uid = [result objectForKey:@"uid"];
        NSLog(@"Successfully created user account with uid: %@", uid);
        
    }
    
}];

    
}

-(void)SignInMethod:(NSString *)email pwd:(NSString *)password{
    
    Firebase *signInRef =   [self fireBaseReference];
    
    [signInRef authUser:email password:password withCompletionBlock:^(NSError *error, FAuthData *authData)
     {
         if (error) {
             // There was an error logging in to this account
         } else {
             // We are now logged in
             NSLog(@"success");
         }
     }];
}

@end



