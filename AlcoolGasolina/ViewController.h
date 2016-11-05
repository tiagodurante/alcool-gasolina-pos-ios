//
//  ViewController.h
//  AlcoolGasolina
//
//  Created by Faculdade Alfa on 05/11/16.
//  Copyright (c) 2016 Tiago Amado Durante. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIActionSheetDelegate>


@property (strong, nonatomic) IBOutlet UITextField *valorAlcool;
@property (strong, nonatomic) IBOutlet UITextField *valorGasolina;

- (IBAction) calcular:(id)sender;
- (IBAction) compartilhar:(id)sender;

@end