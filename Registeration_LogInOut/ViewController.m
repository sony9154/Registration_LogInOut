//
//  ViewController.m
//  Registeration_LogInOut
//
//  Created by Peter Yo on 2月/1/16.
//  Copyright © 2016年 Song-Yo Hsu. All rights reserved.
//

#import "ViewController.h"
#import "SuccessViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

@end

@implementation ViewController

- (IBAction)validateAccount:(id)sender {
    NSString * username = self.usernameField.text;
    NSString * password = self.passwordField.text;
    if ([username isEqualToString:@"%@",]) {
        NSLog(@"登入成功");
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backToViewContriller:(UIStoryboardSegue *) segue {
    NSLog(@"back to FirstPage");
}

@end
