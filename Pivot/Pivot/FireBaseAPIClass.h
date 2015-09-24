//
//  FireBaseAPIClass.h
//  Pivot
//
//  Created by Sushma Reddy on 9/23/15.
//  Copyright (c) 2015 Sushma Reddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Firebase/Firebase.h>

@interface FireBaseAPIClass : NSObject

@property (strong,nonatomic) Firebase *connectionVariable;
-(Firebase *)fireBaseReference;
-(void)SignInMethod:(NSString *)email pwd:(NSString *)password;
-(void)SignUpMethod:(NSString *)email pwd:(NSString *)password;


@end
