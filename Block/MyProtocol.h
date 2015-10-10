//
//  MyProtocol.h
//  Block
//
//  Created by LiuMingchuan on 15/10/1.
//  Copyright © 2015年 LMC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyProtocol <NSObject>

- (void)test001;

- (NSString *)test002;

- (void)test003:(NSString *)name;
@end
