//
//  UIView+Colorize.m
//  Zhidao
//
//  Created by Lin Yong on 14-2-28.
//  Copyright (c) 2014年 Baidu. All rights reserved.
//

#import "UIView+Colorize.h"

@implementation UIView (Colorize)

- (UIColor *)randColor{
    static int i = 0;
    i += 1;
    static NSArray *colors;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
//        colors = @[[UIColor redColor],[UIColor greenColor],[UIColor blueColor],[UIColor purpleColor],[UIColor yellowColor],[UIColor orangeColor]];
        colors =
        @[
          [UIColor darkGrayColor],   // 0.333 white
          [UIColor purpleColor],     // 0.5, 0.0, 0.5 RGB
          [UIColor whiteColor],      // 1.0 white
          [UIColor redColor],        // 1.0, 0.0, 0.0 RGB
          [UIColor grayColor],       // 0.5 white
          [UIColor greenColor],      // 0.0, 1.0, 0.0 RGB
          [UIColor lightGrayColor],  // 0.667 white
          [UIColor blueColor],       // 0.0, 0.0, 1.0 RGB
          [UIColor cyanColor],       // 0.0, 1.0, 1.0 RGB
          [UIColor yellowColor],     // 1.0, 1.0, 0.0 RGB
          [UIColor orangeColor],     // 1.0, 0.5, 0.0 RGB
          [UIColor brownColor],      // 0.6, 0.4, 0.2 RGB
          [UIColor magentaColor],    // 1.0, 0.0, 1.0 RGB
          ];
        
    });
    
    return colors[i % [colors count]];
}

- (void)colorize{
    self.backgroundColor = [self randColor];
    for (UIView *v in self.subviews) {
        [v colorize];
    }
}
@end
