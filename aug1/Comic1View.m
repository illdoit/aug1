//
//  Comic1View.m
//  Jul11
//
//  Created by Sir Andrew on 7/11/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import "Comic1View.h"

@implementation Comic1View

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

