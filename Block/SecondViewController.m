//
//  SecondViewController.m
//  Block
//
//  Created by LiuMingchuan on 15/9/30.
//  Copyright © 2015年 LMC. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@implementation SecondViewController

- (IBAction)backToOneBtn:(id)sender {

    //当我们的block不为nil时进行处理
    if (self.setInfoBlock != nil) {
        //调用我们的block进行赋值
        self.setInfoBlock(self.inputText.text);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
/**
 *  接受外部传入的block
 *
 *  @param setInfoBlock 传入的block
 */
- (void)setInfo:(SetInfoBlock)setInfoBlock{
    self.setInfoBlock = setInfoBlock;
}
@end
