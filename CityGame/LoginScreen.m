//
//  LoginScreen.m
//  CityGame
//
//  Created by Wim on 17/12/12.
//  Copyright (c) 2012 Wim. All rights reserved.
//

#import "LoginScreen.h"

@interface LoginScreen ()

@end

@implementation LoginScreen

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

- (IBAction)btnLogin:(id)sender {
    //configuring the url with the username and password parsed into it
    NSString *urlString = [NSString stringWithFormat:@"http://webservice.citygamephl.be/CityGamePHLWeb/resources/generic/login/%@/%@", _txtUser.text, _txtPassword.text];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    [request setHTTPMethod: @"GET"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    
    NSError *errorReturned = nil;
    NSURLResponse *theResponse =[[NSURLResponse alloc]init];
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&theResponse error:&errorReturned];
    if (errorReturned)
    {
        //...handle the error
        
    }
    else
    {
        NSString *retVal = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@", retVal);
        //...do something with the returned value        
    }
    _txtUser.text = @"aw yeah";
    
    [self performSegueWithIdentifier:@"segueToNextView" sender:self];
}

- (IBAction)textFieldDoneEditing:(id)sender;{
    [sender resignFirstResponder];
}

//Code om ervoor te zorgen dat keyboard de tekstvelden niet bedekt


- (void)viewDidUnload {
    [self setTxtUser:nil];
    [self setTxtPassword:nil];
    [super viewDidUnload];
}
@end
