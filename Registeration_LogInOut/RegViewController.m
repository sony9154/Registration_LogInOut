//
//  RegViewController.m
//  Registeration_LogInOut
//
//  Created by Peter Yo on 2月/1/16.
//  Copyright © 2016年 Song-Yo Hsu. All rights reserved.
//

#import "RegViewController.h"

@interface RegViewController ()

@property (weak, nonatomic) IBOutlet UITextField * addAccountField;

@property (weak, nonatomic) IBOutlet UITextField * addPwdField;

@property (nonatomic,strong) NSMutableArray * mutableNewUser;

@end

@implementation RegViewController
- (IBAction)registerButton:(id)sender {
    NSString * newUser = self.addAccountField.text;
    [_mutableNewUser addObject:newUser];
    for (newUser in _mutableNewUser) {
        NSLog(@"%@",newUser);
    }
    NSLog(@"%li",_mutableNewUser.count);
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _mutableNewUser = [[NSMutableArray alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
