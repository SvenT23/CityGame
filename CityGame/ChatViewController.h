//
//  ChatViewController.h
//  CityGame
//
//  Created by Wim on 19/01/13.
//  Copyright (c) 2013 Wim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtChat;
@property (strong, nonatomic) IBOutlet UITextView *txtChatView;

- (IBAction)textFieldEditingDidBegin:(UITextField *)sender;
- (IBAction)textFieldEditingDidEnd:(UITextField *)sender;

@end
