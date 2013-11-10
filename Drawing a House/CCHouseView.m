//
//  CCHouseView.m
//  Drawing a House
//
//  Created by Eliot Arntz on 11/10/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCHouseView.h"

@implementation CCHouseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    /* Create a UIBezierPath object and set its' line width to be 2 points. Then create a series of points that will serve as the outline of our house. We use the method moveToPoint as our starting point and addLineToPoint to draw a line from the current point to the new point. Each time we addLineToPoint the new point becomes the current point. Finally, we call the method close path which draws a line from the current point to the beginning point. Finally, we call the method stroke to draw the line. */
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    bezierPath.lineWidth = 2.0;
    [bezierPath moveToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/4.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(3/4.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(3/4.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 1/4.0 * self.bounds.size.height)];
    [bezierPath closePath];
    [bezierPath stroke];
}


@end
