//
//  SecondViewController.m
//  NSNotificationCenter
//
//  Created by Aditya Narayan on 12/1/14.
//  Copyright (c) 2014 John Bogil. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)onePressed:(id)sender {
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"test1" object:self];
}

- (IBAction)twoPressed:(id)sender {
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"test2" object:self];
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
@end
