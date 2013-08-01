//
//  peanuts.m
//  aug1
//
//  Created by Sir Andrew on 7/31/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import "peanuts.h"
#import "Comic1View.h"
#import "Comic2View.h"
#import "Comic3View.h"
#import "Comic4View.h"

@implementation peanuts

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
        
		//Don't bother with a background color--
		//this BigView is entirely occupied by a LittleView.
		
		views = [NSArray arrayWithObjects:
                 [[Comic1View alloc] initWithFrame: self.bounds],
                 [[Comic2View alloc] initWithFrame: self.bounds],
                 [[Comic3View alloc] initWithFrame: self.bounds],
                 [[Comic4View alloc] initWithFrame: self.bounds],
                 nil
                 ];
        
		index = 0;	//LittleView0 is the one that's initially visible.
		[self addSubview: [views objectAtIndex: index]];
	}
	return self;
}

- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event {
	
	/*
     Assume a swipe has just ended.  A more complicated program could
     distinguish between left vs. rights wipes, and perform a
     UIViewAnimationOptionTransitionFlipFromLeft or a
     UIViewAnimationOptionTransitionFlipFromRight.
     
     In UIViewAnimationOptionTransitionFlipFromLeft, the left edge moves
     to the right, and the right edge moves away from the user and to the
     left.
     */
    
	//NSUInteger newIndex = 1 - index;	//toggle the index
    NSUInteger newIndex = (index + 1) % views.count;
    
	[UIView transitionFromView: [views objectAtIndex: index]
                        toView: [views objectAtIndex: newIndex]
                      duration: 2.25
                       options: UIViewAnimationOptionTransitionCrossDissolve //UIViewAnimationOptionTransitionFlipFromLeft
                    completion: NULL
     ];
    
	index = newIndex;
    
}


/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
 // Drawing code
 }
 */

@end


/*
@implementation peanuts
- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
        UIGraphicsBeginImageContext(self.frame.size);
        [[UIImage imageNamed:@"Comic1.png"] drawInRect:self.bounds];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        self.backgroundColor = [UIColor colorWithPatternImage:image];
	}
	return self;
}




- (void) drawRect: (CGRect) rect{}

@end


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
}


@end
*/
