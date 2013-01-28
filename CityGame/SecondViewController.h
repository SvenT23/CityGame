//
//  SecondViewController.h
//  CityGame
//
//  Created by Wim on 15/12/12.
//  Copyright (c) 2012 Wim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface SecondViewController : UIViewController
//NavigationController is nodig om naar het camerascherm te gaan
//ImagePicker gebruiken om genomen foto te selecteren
<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    UIImageView *imageView;
    //variabele om te bepalen of het om een nieuwe foto gaat of een reeds gemaakte foto
    BOOL newMedia;
}
//Nodig voor custom album
@property (strong, atomic) ALAssetsLibrary* library;


//actions
- (IBAction)btnPhoto:(id)sender;
- (IBAction)btnSend:(id)sender;
- (IBAction)btnPicker:(id)sender;

//outlets
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *btnSend;


@end
