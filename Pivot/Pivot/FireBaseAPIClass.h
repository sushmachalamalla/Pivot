//
//  FireBaseAPIClass.h
//  Pivot
//
//  Created by Sushma Reddy on 9/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Firebase/Firebase.h>
#define YES (BOOL)1
#define NO (BOOL)0

@interface FireBaseAPIClass : NSObject

@property (strong,nonatomic) Firebase *connectionVariable;
-(Firebase *)fireBaseReference;
//-(Firebase *)fireBaseDataBaseReference;
-(BOOL)SignInMethod:(NSString *)email pwd:(NSString *)password;
-(BOOL)SignUpMethod:(NSString *)email pwd:(NSString *)password;
@property (nonatomic,assign) BOOL isAuthenticarionstatus;

-(BOOL)AddPostMethod:(NSString *)from to:(NSString *)to contact:(NSString *)contact Details:(NSString *)Details;
@end
