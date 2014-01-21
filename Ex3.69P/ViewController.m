//
//  ViewController.m
//  Ex3.69P
//
//  Created by SDT-1 on 2014. 1. 21..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(IBAction)showActivityVC:(id)sender{
    
    UIImage *image = [UIImage imageNamed:@"girl7.png"];
    NSArray *items = @[@"액티비티 뷰 컨트롤러 테스팅!",image];
    UIActivityViewController *vc =[[UIActivityViewController alloc]initWithActivityItems:items applicationActivities:nil];
    
    vc.completionHandler =^(NSString *activityType,BOOL completed){
        NSLog(@"%@의 동작을 마쳤씁니다.",activityType);
    };
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
