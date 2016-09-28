//
//  ViewController.m
//  KMColorMe
//
//  Created by Student P_03 on 13/09/16.
//  Copyright © 2016 Karishma Mahajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myLabel=[[UILabel alloc]initWithFrame:CGRectMake(60, 50, 300,50)];
    myLabel.backgroundColor =[UIColor blackColor];
    myLabel.textColor=[UIColor whiteColor];
    myLabel.font = [UIFont systemFontOfSize:40];

    myLabel.textAlignment = NSTextAlignmentCenter;
    [myLabel setText:(@"Color Me")];
    [self.view addSubview:myLabel];
    
    
    redVal=0;
    greenVal=0;
    blueVal=0;
    alphaVal=0;
    
    UISlider *blueSlider=[[UISlider alloc]initWithFrame:CGRectMake(150, 600, 250, 30)];
    //blueSlider.backgroundColor=[UIColor blueColor];
    [blueSlider addTarget:self action:@selector(changeBlueColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:blueSlider];
    
    
    UISlider *greenSlider=[[UISlider alloc]initWithFrame:CGRectMake(150, 500, 250, 30)];
   // greenSlider.backgroundColor=[UIColor greenColor];
    [greenSlider addTarget:self action:@selector(changeGreenColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:greenSlider];
    
    
    UISlider *redSlider=[[UISlider alloc]initWithFrame:CGRectMake(150, 400, 250, 30)];
   // redSlider.backgroundColor=[UIColor redColor];
    [redSlider addTarget:self action:@selector(changeRedColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:redSlider];
    
    
    
    UISlider *alphaSlider=[[UISlider alloc]initWithFrame:CGRectMake(150, 700, 250, 30)];
    
    [alphaSlider addTarget:self action:@selector(changeAlphaColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:alphaSlider];
    
    
    
    alphaLabel=[[UILabel alloc]initWithFrame:CGRectMake(40, 700, 50, 30)];
    alphaLabel.backgroundColor =[UIColor blackColor];
    [self.view addSubview:alphaLabel];
    
    
    

    
    
    blueLabel=[[UILabel alloc]initWithFrame:CGRectMake(40, 600, 50, 30)];
    blueLabel.backgroundColor =[UIColor blueColor];
    [self.view addSubview:blueLabel];
    
    
    
    greenLabel=[[UILabel alloc]initWithFrame:CGRectMake(40, 500, 50, 30)];
   greenLabel.backgroundColor =[UIColor greenColor];
    [self.view addSubview:greenLabel];
    
    
    
    redLabel=[[UILabel alloc]initWithFrame:CGRectMake(40, 400, 50, 30)];
    redLabel.backgroundColor =[UIColor redColor];
    [self.view addSubview:redLabel];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)colorMe
{
    self.view.backgroundColor=[UIColor colorWithRed:redVal green:greenVal blue:blueVal alpha:alphaVal];
}

-(void)changeRedColor:(id)sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    redLabel.textColor=[UIColor whiteColor];
    redLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    redVal=colorValue;
    [self colorMe];
    
}




-(void)changeGreenColor:(id)sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    greenLabel.textColor=[UIColor whiteColor];
    greenLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    greenVal=colorValue;
    [self colorMe];
    
}



-(void)changeBlueColor:(id)sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    blueLabel.textColor=[UIColor whiteColor];
    blueLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    blueVal=colorValue;
    [self colorMe];
    
    //    self.view.backgroundColor=[UIColor colorWithRed:0 green:0 blue:colorValue alpha:1];
    
    
}




-(void)changeAlphaColor:(id)sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    alphaLabel.textColor=[UIColor whiteColor];
    alphaLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    alphaVal=colorValue;
    [self colorMe];
    
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
