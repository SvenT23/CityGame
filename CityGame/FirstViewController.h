//
//  FirstViewController.h
//  CityGame
//
//  Created by Wim on 15/12/12.
//  Copyright (c) 2012 Wim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *latitude;
@property (weak, nonatomic) IBOutlet UILabel *longitude;
- (IBAction)getLocation:(id)sender;

@end
