//
//  ViewController.m
//  ActionCommit
//
//  Created by sadakoa on 2014/06/21.
//  Copyright (c) 2014年 sadakoa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    NSString* questionArray[12];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //効果音ファイル読み込み
    NSString *path = [[NSBundle mainBundle] pathForResource:@"button" ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(url), &sound_1);
    
    questionArray[0]=@"隣の人と手を\n繋いでください。";
    questionArray[1]=@"左にいる人の頭を\n撫でてください。";
    questionArray[2]=@"正面の人に\nウィンクしてください。";
    questionArray[3]=@"一発ギャグを\nしてください。";
    questionArray[4]=@"右にいる人の好きな\n食べ物を当ててください。";
    questionArray[5]=@"今まで付き合った人の\n人数を教えて下さい。";
    questionArray[6]=@"左の人に膝枕を\nしてあげてください。";
    questionArray[7]=@"今付き合ってる人は\nいますか、いたら\n写真を見せてください。";
    questionArray[8]=@"SかMか教えてください。";
    questionArray[9]=@"携帯の待受け画面を\n見せてください。";
    questionArray[10]=@"何歳で結婚したいと\n思いますか？";
    questionArray[11]=@"この中で付き合う\nとしたら誰ですか？";
    
}


-(IBAction)boom {
    
    {
        { // jump.caf
            NSString *path=[[NSBundle mainBundle] pathForResource:@"seikai" ofType:@"mp3"];
            NSURL *url=[NSURL fileURLWithPath:path];
            AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(url), &sound_2);

        }
    }
    
    // 0~20までランダムに数字を生成する。
    AudioServicesPlaySystemSound(sound_1);
    actionNumber=arc4random() % 60 + 1;
    label.text=[NSString stringWithFormat:@"%d", actionNumber];
    
    //　ランダムの配列
    
    if (actionNumber == 1) {
        label.text=questionArray[0];
         label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);

    } else if (actionNumber == 2) {
        label.text=questionArray[1];
         label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);


    }
    else if (actionNumber == 3) {
        label.text=questionArray[2];
        label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);


    }
    else if (actionNumber == 4) {
        label.text=questionArray[3];
        label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);


    }
    else if (actionNumber == 5) {
        label.text=questionArray[4];
        label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);


    }
    else if (actionNumber == 6) {
        label.text=questionArray[5];
        label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);


    }
    else if (actionNumber == 7) {
        label.text=questionArray[6];
         label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);

    }
    else if (actionNumber == 8) {
        label.text=questionArray[7];
         label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);

    }
    else if (actionNumber == 9) {
        label.text=questionArray[8];
         label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);

    }
    else if (actionNumber == 10) {
        label.text=questionArray[9];
         label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);

    }
    else if (actionNumber == 11) {
        label.text=questionArray[10];
         label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);

    }
    else if (actionNumber == 12) {
        label.text=questionArray[11];
         label.textColor=[UIColor redColor];
        AudioServicesPlaySystemSound(sound_2);

    }
    else {
        label.text=@"なにがでるかな？？？";
        label.textColor=[UIColor darkGrayColor];


    }
    

}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
