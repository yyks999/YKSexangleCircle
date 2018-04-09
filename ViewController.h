//
//  ViewController.h
//  YKSexangleCircle
//
//  Created by 杨翊楷 on 15/1/20.
//  Copyright (c) 2015年 杨翊楷. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SCREEN_WIDTH  (([[[UIDevice currentDevice] systemVersion] floatValue] >= 8) ? (([[UIScreen mainScreen] nativeBounds].size.width)/[UIScreen mainScreen].nativeScale) : ([[UIScreen mainScreen] bounds].size.width))

@interface ViewController : UIViewController


@end

