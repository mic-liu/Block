//
//  SecondViewController.h
//  Block
//
//  Created by LiuMingchuan on 15/9/30.
//  Copyright © 2015年 LMC. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  Block的定义
 *
 *  @param info 文字列形参
 */
typedef void(^SetInfoBlock)(NSString *info);

@interface SecondViewController : UIViewController

- (IBAction)backToOneBtn:(id)sender;

@property (strong, nonatomic) IBOutlet UITextView *inputText;

/**
 *  自定义block的声明
 */
@property (nonatomic,copy) SetInfoBlock setInfoBlock;

/**
 *  用来设定本Controller的block
 *
 *  @param setInfoBlock <#setInfoBlock description#>
 */
- (void)setInfo:(SetInfoBlock)setInfoBlock;

@end
