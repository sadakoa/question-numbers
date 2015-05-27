//
//  ViewController.h
//  ActionCommit
//
//  Created by sadakoa on 2014/06/21.
//  Copyright (c) 2014年 sadakoa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController
{
    int actionNumber;
     SystemSoundID sound_1;
    SystemSoundID sound_2;
    IBOutlet UILabel *label;
}

-(IBAction)boom;

@end


