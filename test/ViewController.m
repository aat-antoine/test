//
//  ViewController.m
//  test
//
//  Created by Antoine Arnoult on 28/12/2016.
//  Copyright © 2016 Antoine Arnoult. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.hello.text = @"Default text";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleButtonClick:(id)sender {
    [self updateText];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.edText resignFirstResponder];
}

- (void)updateText {
    NSString* txtFromUser = self.edText.text;
    int cpt = [self addFive:5];
    
    NSString* newTxt = [NSString stringWithFormat:@"%@ %d", txtFromUser, cpt];
    self.hello.text = newTxt;
}

- (int)addFive:(int)input {
    return input + 5;
}

@end
