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
@synthesize isAuthenticarionstatus;


-(Firebase *)fireBaseReference{
Firebase *ref = [[Firebase alloc]initWithUrl:@"https://pivot.firebaseio.com"];
    return ref;
}
//********************FireBase DataBase**************************

/*-(Firebase *)fireBaseDataBaseReference{
    
    Firebase *refDataBase = [[Firebase alloc]initWithUrl:@"https://pivot.firebaseio.com/POSTS"];
    return refDataBase;
}*/

//***************************SignUp method*************************

-(BOOL)SignUpMethod:(NSString *)email pwd:(NSString *)password{
    
     __block bool isValid=YES;
    
    Firebase *signUpRef =   [self fireBaseReference];
    
    [signUpRef createUser:email password:password
                withValueCompletionBlock:^(NSError *error, NSDictionary *result){
    if (error) {
        
        isValid=NO;
    }
    else
    {
          isValid=YES;
           }
    
   }];
     return isValid;
    
}

//***************************SignIn method*************************

-(BOOL)SignInMethod:(NSString *)email pwd:(NSString *)password{
    
    
    __block bool isValid=YES;
    Firebase *signInRef =   [self fireBaseReference];
    
    [signInRef authUser:email password:password withCompletionBlock:^(NSError *error, FAuthData *authData)
     {
         if (error) {
             
             isValid=NO;
                     }
       else
       {
           isValid=YES;
         
       }
         
         
     }];
       return isValid;
    }
//******************************ADDPOSTMETHOD**************************

-(BOOL)AddPostMethod:(NSString *)from to:(NSString *)to contact:(NSString *)contact Details:(NSString *)Details
{
    Firebase *ref = [self fireBaseReference];
    Firebase *dataBaseRef = [ref childByAppendingPath:@"POSTS"];
    
   //BOOL isFavourited = NO;
    
    NSDictionary *NewPost = @{
                            @"FROM" : from,
                            @"TO" : to,
                            @"CONTACT" : contact,
                            @"DETAILS" : Details,
                           // @"isFavourited" : isFavourited
                            //userid
                            //offering/requesting
                            
                            };
   
    NSDictionary *posts = @{
                            @"NEW POST":NewPost
                            };
    Firebase *autoId = [dataBaseRef childByAutoId];
    [autoId updateChildValues:posts];
    
    return YES;
}

@end



