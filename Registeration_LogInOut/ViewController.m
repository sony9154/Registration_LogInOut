//
//  ViewController.m
//  Registeration_LogInOut
//
//  Created by Peter Yo on 2月/1/16.
//  Copyright © 2016年 Song-Yo Hsu. All rights reserved.
//

#import "ViewController.h"
#import "SuccessViewController.h"
#import "RegViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField * usernameField;
@property (weak, nonatomic) IBOutlet UITextField * passwordField;

@end

@implementation ViewController

- (IBAction)registerAccount:(id)sender {
}

- (IBAction)validateAccount:(id)sender {
    NSString * username = _usernameField.text;
    NSString * password = _passwordField.text;

    if (/*用dictionary這裡的判斷真的不知道要怎麼寫*/) {
        NSLog(@"登入成功");
        [self performSegueWithIdentifier:@"LoginSuccess" sender:nil];
    } else {
        UIAlertController * alertcontroller = [UIAlertController alertControllerWithTitle:@"登入失敗" message:@"帳號密碼錯誤" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * understand = [UIAlertAction actionWithTitle:@"我知道了" style:UIAlertActionStyleDefault handler:nil];
        [alertcontroller addAction:understand];
        [self presentViewController:alertcontroller animated:YES completion:nil];
    }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"LoginSuccess"]) {
        SuccessViewController * sVC = segue.destinationViewController;
        sVC.successName = _usernameField.text;
    }else if
        ([segue.identifier isEqualToString:@"seguetoReg"]){
            RegViewController * regVC = segue.destinationViewController;
            //regVC.regNewUsers = _vcUsersArray;
            //regVC.regNewPwd = _vcPwdArray;
            regVC.regUserInfos = self.userInfos;
        }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //_vcUsersArray = [[NSMutableArray alloc]init];
    //_vcPwdArray = [[NSMutableArray alloc]init];
    self.userInfos = [[NSMutableDictionary alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(IBAction)backToViewContriller:(UIStoryboardSegue *) segue {
//    NSLog(@"back to FirstPage");
//}

@end








