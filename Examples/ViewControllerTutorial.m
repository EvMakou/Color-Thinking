//
//  ViewControllerTutorial.m
//  Examples
//
//  Created by supermacho on 25.09.16.
//  Copyright © 2016 supermacho. All rights reserved.
//

#import "ViewControllerTutorial.h"

@interface ViewControllerTutorial ()

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

@implementation ViewControllerTutorial
NSTimer* timer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void) viewDidAppear:(BOOL)animated{
    [timer invalidate];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(changeColor) userInfo:nil repeats:NO];
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
            NSLog(@"Two color ===== %ld", twoColor);
        default:
            break;
    }
    return color;
}


- (void) changeColor{
    //[timer invalidate];
    //timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerSelector) userInfo:nil repeats:YES];
    
    self.image.image = [UIImage imageNamed:@""];
    randNumOne = arc4random() % 4;
    randNumTwo = arc4random() % 4;
    //randNumThree = arc4random() % 4;
    //randNumFour = arc4random() % 4;
    NSLog(@"%ld---%ld",randNumOne,randNumTwo);
    
    int i;
    arrayString = [[NSArray alloc] initWithObjects:@"красный",@"синий",@"зелёный",@"жёлтый", nil];
    for ( i = 0; i < arrayString.count; i++) {
        
        
        stringColorsOne = [arrayString objectAtIndex:randNumOne];
        stringColorsTwo = [arrayString objectAtIndex:randNumTwo];
        //stringColorsThree = [arrayString objectAtIndex:randNumThree];                     level up
        //stringColorsFour = [arrayString objectAtIndex:randNumFour];                       level up
        
    }
    self.colorLLabel.text = stringColorsOne;
    self.colorLLabel.textColor = [self changeColorOne];
    
    
    self.colorRLabe2.text = stringColorsTwo;
    self.colorRLabe2.textColor = [self changeColorTwo];
    if (randNumOne != twoColor) {
        [self recordLabelMethod];
        
    }
    else if (randNumOne == twoColor){
        
        
        self.image.image = [UIImage imageNamed:@"Рисунок2"];
    }
    
        if (randNumOne == twoColor) {
            [self recordLabelMethod];
            
        }
        else if (randNumOne != twoColor){
            
            self.image.image = [UIImage imageNamed:@"Рисунок2"];
    }
        
        
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) recordLabelMethod{
    
    self.image.image = [UIImage imageNamed:@"Рисунок1"];
    [self viewDidAppear:YES];
    if (countRight > record) {
        record++;
        //record = 0;
        //numberToSave = record;
        //self.recordLabel.text = [NSString stringWithFormat:@"%ld",(long)record];
        //[[NSUserDefaults standardUserDefaults]setInteger:numberToSave forKey:@"stringWithKey"];
        //[[NSUserDefaults standardUserDefaults]synchronize];
        NSLog(@"NO,Baby! %ld",(long)record);
        
        self.image.image = [UIImage imageNamed:@"Рисунок1"];
        
        [self viewDidAppear:YES];
        
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
