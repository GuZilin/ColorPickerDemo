//
//  ViewController.m
//  ColorPickerDemo
//
//  Created by gzl on 16/2/15.
//  Copyright © 2016年 gzl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize delegate;
@synthesize selectedColor;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadSubView];
}

- (void)loadSubView
{
    UIView *container = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    container.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    container.backgroundColor = [UIColor clearColor];
    self.view = container;
    
    
    KZColorPicker *picker = [[KZColorPicker alloc] initWithFrame:container.bounds];
    picker.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    picker.selectedColor = self.selectedColor;
    picker.oldColor = self.selectedColor;
    [picker addTarget:self action:@selector(pickerChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:picker];
    
}

- (void) pickerChanged:(KZColorPicker *)cp
{
    self.selectedColor = cp.selectedColor;
    [delegate defaultColorController:self didChangeColor:cp.selectedColor];
}

#pragma mark -
#pragma mark  Popover support
- (CGSize) contentSizeForViewInPopover
{
    return CGSizeMake(320, 416);
}
@end
