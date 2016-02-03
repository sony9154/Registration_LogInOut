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
    NSString * username = self.usernameField.text;
    NSString * password = self.passwordField.text;
    for (NSString * user in self.vcUsersArray) {
        if ([username isEqualToString:user]) {
          NSUInteger index = [self.vcUsersArray indexOfObject:user];
            for (NSString * user in self.vcPwdArray) {
                NSString * pwdObject = [self.vcPwdArray objectAtIndex:index];
                if([password isEqualToString: pwdObject]){
                    NSLog(@"登入成功");//判斷邏輯有誤
                }
            }
        }
        
    }
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"LoginSuccess"]) {
        SuccessViewController * sVC = segue.destinationViewController;
        sVC.successName = self.usernameField.text;
    }else if
        ([segue.identifier isEqualToString:@"seguetoReg"]){
            RegViewController * regVC = segue.destinationViewController;
            regVC.regNewUsers = self.vcUsersArray;
            regVC.regNewPwd = self.vcPwdArray;
        }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.vcUsersArray = [[NSMutableArray alloc]init];
    self.vcPwdArray = [[NSMutableArray alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(IBAction)backToViewContriller:(UIStoryboardSegue *) segue {
//    NSLog(@"back to FirstPage");
//}

@end








