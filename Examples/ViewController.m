//
//  ViewController.m
//  Examples
//
//  Created by supermacho on 18.09.16.
//  Copyright © 2016 supermacho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
NSArray* arrayString;
NSString* stringColorsOne;
NSString* stringColorsTwo;
NSString* stringColorsThree;
NSString* stringColorsFour;
NSInteger randNumOne;
NSInteger randNumTwo;
NSInteger randNumThree;
NSInteger randNumFour;
NSString* red1;
NSInteger oneColor;
NSInteger twoColor;
NSInteger record;
NSTimer* timer;
CGFloat timeInterval;
NSInteger timeTick;
NSTimer* timer;
NSTimer* timer2;
NSTimer* timer3;
NSInteger timeTickSelector;
NSInteger numberToSave;
NSInteger countRight;
NSInteger threeColor;
NSInteger fourColor;
NSString* stringTimer;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    countRight = 0;
    timeInterval = 1.0;
    
    NSInteger stringWithKey = [[NSUserDefaults standardUserDefaults]integerForKey:@"stringWithKey"];
    record = stringWithKey;
    
    self.recordLabel.text = [NSString stringWithFormat:@"%ld",(long)stringWithKey];
   // NSInteger k = [[NSUserDefaults standardUserDefaults]integerForKey:@"numInt"];
    //recordNumber = k;
    
    //[self changeColor];
    
}


- (void)viewDidAppear:(BOOL)animated{
    //[self complexity];
    //stringTimer = @"///////";
    //timeTickSelector = 7;
    if (countRight > 10 && countRight <= 20) {
        timeTickSelector = 5;
        stringTimer = @"/////";
        
    }
    else if(countRight > 20){
        timeTickSelector = 2;
        stringTimer = @"//";
    }
    else{
        timeTickSelector = 7;
        stringTimer = @"///////";
       //stringTimer = [stringTimer substringToIndex:[stringTimer length ] - 1];
    }
    
    
    [timer invalidate];
    timer = [NSTimer scheduledTimerWithTimeInterval:timeInterval target:self selector:@selector(changeColor) userInfo:nil repeats:NO];
   
}


- (void) timerSelector{
    if (timeTickSelector == 0) {
        [timer3 invalidate];
        self.image.image = [UIImage imageNamed:@"Рисунок2"];
         [self timerBetween];
    }
    else{
    timeTickSelector--;
    stringTimer = [stringTimer substringToIndex:[stringTimer length ] - 1];
    //NSString* string = [NSString stringWithFormat:@"%ld",(long)timeTickSelector];
    _timerLabel.text = stringTimer;
    }
}

-(void)changeColor{
    [timer3 invalidate];
     timer3 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerSelector) userInfo:nil repeats:YES];
    self.compareLabel.textColor = [UIColor whiteColor];
    
    self.image.image = [UIImage imageNamed:@""];
    randNumOne = arc4random() % 4;
    randNumTwo = arc4random() % 4;
    randNumThree = arc4random() % 4;
    randNumFour = arc4random() % 4;
    
    NSLog(@"%ld---%ld",randNumOne,randNumTwo);
    
    int i;
    arrayString = [[NSArray alloc] initWithObjects:@"красный",@"синий",@"зелёный",@"жёлтый", nil];
    for ( i = 0; i < arrayString.count; i++) {
        
        
        stringColorsOne = [arrayString objectAtIndex:randNumOne];
        stringColorsTwo = [arrayString objectAtIndex:randNumTwo];
        //stringColorsThree = [arrayString objectAtIndex:randNumThree];                     level up
        //stringColorsFour = [arrayString objectAtIndex:randNumFour];                       level up
        
    }
    self.colorLabel.text = stringColorsOne;
    self.colorLabel.textColor = [self changeColorOne];
    
    
    self.colorLabel2.text = stringColorsTwo;
    self.colorLabel2.textColor = [self changeColorTwo];
    
   /* self.colorLabel3.text = stringColorsThree;
    self.colorLabel3.textColor = [self changeColorThree];                       level up
    
    
    self.colorLabel4.text = stringColorsFour;
    self.colorLabel4.textColor = [self changeColorFour];
    
    */
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIColor*) changeColorOne{
    UIColor* color;
    
    
    oneColor = arc4random() % 4;
    
    
    switch (oneColor) {
        case 0:
            color = [UIColor redColor];
            
            break;
        case 1:
            color = [UIColor blueColor];
            break;
        case 2:
            color = [UIColor greenColor];
            break;
        case 3:
            color = [UIColor yellowColor];
            NSLog(@"Two color ===== %ld", twoColor);
                default:
            break;
    }
    return color;
}

-(UIColor*) changeColorFour{
    UIColor* color;
    
    
    
    fourColor = arc4random() % 4;
    
    switch (fourColor) {
        case 0:
            color = [UIColor redColor];
            break;
        case 1:
            color = [UIColor blueColor];
            break;
        case 2:
            color = [UIColor greenColor];
            break;
        case 3:
            color = [UIColor yellowColor];
        default:
            break;
    }
    return color;
}




-(UIColor*) changeColorThree{
    UIColor* color;
    
    
    
    threeColor = arc4random() % 4;
    
    switch (threeColor) {
        case 0:
            color = [UIColor redColor];
            break;
        case 1:
            color = [UIColor blueColor];
            break;
        case 2:
            color = [UIColor greenColor];
            break;
        case 3:
            color = [UIColor yellowColor];
        default:
            break;
    }
    return color;
}




-(UIColor*) changeColorTwo{
    UIColor* color;
    
    
    
    twoColor = arc4random() % 4;
    
    switch (twoColor) {
        case 0:
            color = [UIColor redColor];
            break;
        case 1:
            color = [UIColor blueColor];
            break;
        case 2:
            color = [UIColor greenColor];
            break;
        case 3:
            color = [UIColor yellowColor];
                    default:
            break;
    }
    return color;
}


- (IBAction)changeColorButton:(id)sender {
    
}



-(void) dissMiss{
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(void) timerBetween{
    timer2 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(dissMiss) userInfo:nil repeats:NO];
}


-(void) complexity{
           if (countRight == 5) {
            timeTickSelector = 5;
        
    }
}







- (IBAction)noButton:(id)sender {
    //record = 0;
    /*if ((countRight > 10 && randNumThree != fourColor) || randNumOne != twoColor ) {                  level up
        [self recordLabelMethod];
    }
    else*/
    if (randNumOne != twoColor) {
       [self recordLabelMethod];   
        
    }
   // else if ((countRight > 10 && randNumThree == fourColor) && randNumOne == twoColor) {                  level up
     //   self.image.image = [UIImage imageNamed:@"Рисунок2"];
   // }
    else if (randNumOne == twoColor){
        
        
        self.image.image = [UIImage imageNamed:@"Рисунок2"];
     
        [self timerBetween];
        
        
    }
   
}

- (void) recordLabelMethod{
    //record = 0;
    countRight++;
    self.currentNumberLabel.text = [NSString stringWithFormat:@"%ld",(long)countRight];
    
    
    self.image.image = [UIImage imageNamed:@"Рисунок1"];
    [self viewDidAppear:YES];
    if (countRight > record) {
        record++;
        //record = 0;
        numberToSave = record;
        //self.recordLabel.text = [NSString stringWithFormat:@"%ld",(long)record];
        [[NSUserDefaults standardUserDefaults]setInteger:numberToSave forKey:@"stringWithKey"];
        [[NSUserDefaults standardUserDefaults]synchronize];
        
        self.image.image = [UIImage imageNamed:@"Рисунок1"];
        
        [self viewDidAppear:YES];
        
        }

    }


- (IBAction)yesButton:(id)sender {
    /*if (countRight > 10 && randNumThree == fourColor && randNumOne == twoColor) {                 level up
        [self recordLabelMethod];
    }
    else*/
    
    
    //here!!!
    
    if (randNumOne == twoColor) {
        [self recordLabelMethod];
        
    }
    
    //else if((countRight > 10 && randNumThree != fourColor) || randNumOne != twoColor){            level up
        
    //}
    
    else if (randNumOne != twoColor){
        
    self.image.image = [UIImage imageNamed:@"Рисунок2"];
    
    [self timerBetween];
}

    
    
    
}
@end
