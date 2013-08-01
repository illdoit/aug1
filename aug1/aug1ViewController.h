//
//  aug1ViewController.h
//  aug1
//
//  Created by Sir Andrew on 7/31/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MediaPlayer.h>
#import <QuartzCore/QuartzCore.h>

@class quag;

@interface aug1ViewController: UIViewController {
    	CADisplayLink *displayLink;

}


- (id) initWithTitle: (NSString *) t image:(UIImage *) b view: (UIView *) v;
@end
