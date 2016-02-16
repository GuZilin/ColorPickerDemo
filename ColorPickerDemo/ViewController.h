//
//  ViewController.h
//  ColorPickerDemo
//
//  Created by gzl on 16/2/15.
//  Copyright © 2016年 gzl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KZColorPicker.h"

@protocol ViewControllerDelegate;

@interface ViewController : UIViewController
{
    UIColor *selectedColor;
    id<ViewControllerDelegate> _delegate;
}
@property(nonatomic, assign) id<ViewControllerDelegate> delegate;
@property(nonatomic, retain) UIColor *selectedColor;

@end

@protocol ViewControllerDelegate
- (void) defaultColorController:(ViewController *)controller didChangeColor:(UIColor *)color;
@end



