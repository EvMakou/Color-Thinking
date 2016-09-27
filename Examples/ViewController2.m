//
//  ViewController2.m
//  Examples
//
//  Created by supermacho on 25.09.16.
//  Copyright © 2016 supermacho. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end
NSArray* arrayStringTutor;
NSString* stringColorsOneTutor;
NSString* stringColorsTwoTutor;


NSInteger randNumOneTutor;
NSInteger randNumTwoTutor;



NSInteger oneColorTutor;
NSInteger twoColorTutor;

NSTimer* timerTutor;
CGFloat timeIntervalTutor;
NSInteger timeTickTutor;

NSTimer* timer2Tutor;
NSTimer* timer3Tutor;
NSInteger timeTickSelectorTutor;

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)viewDidAppear:(BOOL)animated{
    [timerTutor invalidate];
    timerTutor = [NSTimer scheduledTimerWithTimeInterval:2.5 target:self selector:@selector(changeColor) userInfo:nil repeats:NO];
}


-(UIColor*) changeColorOne{
    UIColor* color;
    
    
    oneColorTutor = arc4random() % 4;
    
    
    switch (oneColorTutor) {
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
    
    
    twoColorTutor = arc4random() % 4;
    
    
    switch (twoColorTutor) {
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


- (void) changeColor{
    //[timer invalidate];
    //timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerSelector) userInfo:nil repeats:YES];
    
    self.image2.image = [UIImage imageNamed:@""];
    randNumOneTutor = arc4random() % 4;
    randNumTwoTutor = arc4random() % 4;
    //randNumThree = arc4random() % 4;
    //randNumFour = arc4random() % 4;
    int i;
    arrayStringTutor = [[NSArray alloc] initWithObjects:@"красный",@"синий",@"зелёный",@"жёлтый", nil];
    for ( i = 0; i < arrayStringTutor.count; i++) {
        
        
        stringColorsOneTutor = [arrayStringTutor objectAtIndex:randNumOneTutor];
        stringColorsTwoTutor = [arrayStringTutor objectAtIndex:randNumTwoTutor];
        //stringColorsThree = [arrayString objectAtIndex:randNumThree];                     level up
        //stringColorsFour = [arrayString objectAtIndex:randNumFour];                       level up
        
    }
    self.colorLLabel.text = stringColorsOneTutor;
    self.colorLLabel.textColor = [self changeColorOne];
    
    
    self.colorRLabel.text = stringColorsTwoTutor;
    self.colorRLabel.textColor = [self changeColorTwo];
    if (randNumOneTutor != twoColorTutor) {
        [self recordLabelMethod];
        
    }
    else if (randNumOneTutor == twoColorTutor){
        
        
        self.image2.image = [UIImage imageNamed:@"Рисунок2"];
    }
    
    if (randNumOneTutor == twoColorTutor) {
        [self recordLabelMethod];
        
    }
    else if (randNumOneTutor != twoColorTutor){
        
        self.image2.image = [UIImage imageNamed:@"Рисунок2"];
    }
    
    
    
    
}



- (void) recordLabelMethod{
    
    self.image2.image = [UIImage imageNamed:@"Рисунок1"];
    [self viewDidAppear:YES];
    
    
    
    self.image2.image = [UIImage imageNamed:@"Рисунок1"];
    
    [self viewDidAppear:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
