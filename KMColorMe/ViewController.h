//
//  ViewController.h
//  KMColorMe
//
//  Created by Student P_03 on 13/09/16.
//  Copyright © 2016 Karishma Mahajan. All rights reserved.
//

#import <UIKit/UIKit.h>
#define horizontalPadding = 20.0
@interface ViewController : UIViewController
{
    UILabel * redLabel;
    UILabel *greenLabel;
    UILabel *blueLabel;
    UILabel *alphaLabel;
    UILabel * myLabel;
    
    float redVal,blueVal,greenVal,alphaVal;
}


// -(void)colorMe:  (float) redval withGreen : (float) greenval withBlue :(float) blueval withAlpha :(float) alphaVal;

@end

