//
//  aug1ViewController.m
//  aug1
//
//  Created by Sir Andrew on 7/31/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import "aug1ViewController.h"
#import "quag.h"
#import "para.h"

@implementation aug1ViewController

- (id) initWithTitle: (NSString *) t image: (UIImage *) b view: (UIView *) v {
	if (self = [super initWithNibName: nil bundle: nil]) {
		self.title = t;
		self.tabBarItem.image = b;
		self.view = v;
	}

	return self;
}



/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
 // Custom initialization
 }
 return self;
 }
 */

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[para alloc] initWithFrame: frame];
}


 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void) viewDidLoad
{
	[super viewDidLoad];
    
	displayLink = [CADisplayLink displayLinkWithTarget: self.view
                                              selector: @selector(setNeedsDisplay)
                   ];
	
	displayLink.frameInterval = 1;
	
	[displayLink addToRunLoop: [NSRunLoop currentRunLoop]
                      forMode: NSDefaultRunLoopMode
     ];
    
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    	[super viewDidUnload];
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    //[super dealloc];

}


@end