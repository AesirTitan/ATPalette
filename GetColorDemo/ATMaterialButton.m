//
//  ATMaterialButton.m
//  GetColorDemo
//
//  Created by Aesir Titan on 2016-09-15.
//  Copyright © 2016年 Titan Studio. All rights reserved.
//

#import "ATMaterialButton.h"

@implementation ATMaterialButton

- (void)awakeFromNib{
    [super awakeFromNib];
    [self initMyButton];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initMyButton];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self initMyButton];
    }
    return self;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [self buttonStatus:ATButtonStatusHighLighted];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesEnded:touches withEvent:event];
    [self buttonStatus:ATButtonStatusNormal];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesMoved:touches withEvent:event];
    [self buttonStatus:ATButtonStatusNormal];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesCancelled:touches withEvent:event];
    [self buttonStatus:ATButtonStatusNormal];
}

- (void)buttonStatus:(ATButtonStatus)status{
    if (status == ATButtonStatusNormal) {
        self.layer.shadowOffset = CGSizeMake(0.0,0.5);
        self.layer.shadowOpacity = 0.3;
        self.layer.shadowRadius = 0.5;
        self.layer.backgroundColor = [UIColor colorWithRed:0.40f green:0.80f blue:0.98f alpha:1.00f].CGColor;
    } else if (status == ATButtonStatusHighLighted) {
        self.layer.shadowOffset = CGSizeMake(0.0,4.0);
        self.layer.shadowOpacity = 0.3;
        self.layer.shadowRadius = 5.0;
        self.layer.backgroundColor = [UIColor colorWithRed:0.55f green:0.85f blue:0.98f alpha:1.00f].CGColor;
    }
    
}

- (void)initMyButton {
    self.layer.cornerRadius = 3.0;
    [self buttonStatus:ATButtonStatusNormal];
}


@end
