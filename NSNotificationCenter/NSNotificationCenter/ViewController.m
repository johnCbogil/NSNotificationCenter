//
//  ViewController.m
//  NSNotificationCenter
//
//  Created by Aditya Narayan on 12/1/14.
//  Copyright (c) 2014 John Bogil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.counter1 = 0;
    self.counter2 = 0;
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(receiveNotification:) name:@"test1" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(receiveNotification:) name:@"test2" object:nil];
}

-(void)receiveNotification:(NSNotification*)notification{
    
    
    if([[notification name]isEqualToString:@"test1"]){
        self.counter1++;
        self.textField1.text = [NSString stringWithFormat:@"%d", self.counter1];
    }
    else{
        self.counter2++;
        self.textField2.text = [NSString stringWithFormat:@"%d",self.counter2];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc{
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
@end
