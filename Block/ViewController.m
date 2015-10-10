//
//  ViewController.m
//  Block
//
//  Created by LiuMingchuan on 15/9/29.
//  Copyright © 2015年 LMC. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.infoLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.infoLabel.numberOfLines = 0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnToSecond:(id)sender {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    SecondViewController *sec = [storyBoard instantiateViewControllerWithIdentifier:@"second"];
    SetInfoBlock setInfoBlock = ^(NSString *info){
        self.infoLabel.text = info;
    };
    //设定secondViewController的block
    [sec setInfo:setInfoBlock];
    [sec setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:sec animated:YES completion:nil];

}
@end
