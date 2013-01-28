//
//  ChatViewController.m
//  CityGame
//
//  Created by Wim on 19/01/13.
//  Copyright (c) 2013 Wim. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()
@property UITextField *activeField;
@end

@implementation ChatViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTxtChat:nil];
    [self setTxtChatView:nil];
    [super viewDidUnload];
}

//Zorgen dat toetsenbord tekstveld niet bedekt

- (void) animateTextField: (UITextField*) textField up: (BOOL) up
{
    const int movementDistance = 150; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}
- (IBAction)textFieldEditingDidBegin:(UITextField *)sender {
    _activeField = sender;
}

- (IBAction)textFieldEditingDidEnd:(UITextField *)sender {
    _activeField = nil;
   self.txtChatView.text = [self.txtChatView.text stringByAppendingString: @"\n ik: "];
        self.txtChatView.text = [self.txtChatView.text stringByAppendingString: self.txtChat.text];
    self.txtChat.text = @"";
    [sender resignFirstResponder];

}
@end
