//
//  RegViewController.m
//  Registeration_LogInOut
//
//  Created by Peter Yo on 2月/1/16.
//  Copyright © 2016年 Song-Yo Hsu. All rights reserved.
//

#import "RegViewController.h"
#import "ViewController.h"

@interface RegViewController ()

@property (weak, nonatomic) IBOutlet UITextField * addAccountField;

@property (weak, nonatomic) IBOutlet UITextField * addPwdField;

@end

@implementation RegViewController
- (IBAction)registerButton:(id)sender {
    NSString * newUser = self.addAccountField.text;
    NSString * newPwd = self.addPwdField.text;
    [self.regNewUsers addObject:newUser];
    [self.regNewPwd addObject:newPwd];
    if ( [newUser length]==0 || [newPwd length]==0 ) {
        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"註冊失敗" message:@"帳號密碼不能為空" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * understand = [UIAlertAction actionWithTitle:@"我知道了" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:understand];
        [self presentViewController:alert animated:YES completion:nil];
    }
    else{
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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
