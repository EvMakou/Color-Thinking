//
//  ViewController.h
//  Examples
//
//  Created by supermacho on 18.09.16.
//  Copyright © 2016 supermacho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)changeColorButton:(id)sender;
- (IBAction)noButton:(id)sender;
- (IBAction)yesButton:(id)sender;



@property (weak, nonatomic) IBOutlet UILabel *colorLabel;
@property (weak, nonatomic) IBOutlet UILabel *colorLabel2;
@property (weak, nonatomic) IBOutlet UILabel *compareLabel;
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UILabel *recordLabel;
@property (weak, nonatomic) IBOutlet UILabel *currentNumberLabel;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *colorLabel3;
@property (weak, nonatomic) IBOutlet UILabel *colorLabel4;






@end

