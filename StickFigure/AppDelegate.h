//
//  AppDelegate.h
//  StickFigure
//
//  Created by ZY on 2017/7/14.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StickFigureViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) StickFigureViewController * manViewConTroller;

+ (AppDelegate *)appDelegate;

@end

