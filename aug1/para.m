//
//  para.m
//  aug1
//
//  Created by Sir Andrew on 7/31/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import "para.h"
#import "Pearl.h"

@implementation para

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor blackColor];
		n = 5;
		a = [[NSMutableArray alloc] initWithCapacity: n];
		
		touchPoint = CGPointMake(
                                 self.bounds.size.width / 2,
                                 self.bounds.size.height / 2
                                 );
		
		for (NSUInteger i = 0; i < n; ++i) {
			[a addObject: [[Pearl alloc] initWithLocation: touchPoint]];
		}
	}
	return self;
}


- (void) drawRect: (CGRect) rect
{
	// Drawing code
	for (NSUInteger i = 0; i < a.count; ++i) {
		
		CGPoint p = i == 0 ? touchPoint :
        ((Pearl *)[a objectAtIndex: i - 1]).location;
		
		[[a objectAtIndex: i] drag: p];
	}
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 8.0);
    CGContextSetStrokeColorWithColor(context,
                                     [UIColor redColor].CGColor);
    CGContextMoveToPoint(context, 20, 200);
    CGContextAddQuadCurveToPoint(context, 150, 600, 300, 200);
    CGContextStrokePath(context);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

#pragma mark -
#pragma mark Class UIResponder

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	touchPoint = [[touches anyObject] locationInView: self];
}


- (void) touchesMoved: (NSSet *) touches withEvent: (UIEvent *) event {
	touchPoint = [[touches anyObject] locationInView: self];
}

@end
