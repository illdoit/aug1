//
//  quag.h
//  aug1
//
//  Created by Sir Andrew on 7/31/13.
//  Copyright (c) 2013 edu.nyu.spcs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
#import <audioToolbox/AudioServices.h>

@interface quag : UIView{
    UIButton *button1;
    UIButton *button2;
    UIButton *button3;
    UIButton *button4;
    UIButton *button5;
    UIButton *button6;
    AVAudioPlayer *player;
}


@property (nonatomic, retain) AVAudioPlayer *player;

@end
