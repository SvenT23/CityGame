//
//  LoginScreen.h
//  CityGame
//
//  Created by Wim on 17/12/12.
//  Copyright (c) 2012 Wim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginScreen : UIViewController
- (IBAction)btnLogin:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtUser;
@property (strong, nonatomic) IBOutlet UITextField *txtPassword;

- (IBAction)textFieldDoneEditing:(id)sender;
@end
