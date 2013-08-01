//
//  aug1AppDelegate.h
//  aug1
//
//  Created by Sir Andrew on 7/31/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MediaPlayer.h>
@class aug1ViewController;
@class para;

@interface aug1AppDelegate : /*NSObject*/ UIResponder <UIApplicationDelegate> {
	NSArray *a;
	UITabBarController *controller;
	UIWindow *window;
	SystemSoundID sid1;
	SystemSoundID sid2;
	SystemSoundID sid3;
	SystemSoundID sid4;
	SystemSoundID sid5;
	SystemSoundID sid6;
	SystemSoundID sid7;
    	para *view;
    MPMoviePlayerController *controller1;
    	UIWindow *_window;
}

- (void) touchUpInside: (id) sender;
- (void) touchUpInside1: (id) sender1;
- (void) touchUpInside2: (id) sender2;
- (void) touchUpInside3: (id) sender3;
- (void) touchUpInside4: (id) sender4;
- (void) touchUpInside5: (id) sender5;
- (void) touchUpInside6: (id) sender6;
@property (nonatomic, retain) IBOutlet UIWindow *window;
@end
