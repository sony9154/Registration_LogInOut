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

@property (nonatomic,strong) NSMutableArray * mutableNewUsers;

@end

@implementation RegViewController
- (IBAction)registerButton:(id)sender {
    NSString * newUser = self.addAccountField.text;
    [_mutableNewUsers addObject:newUser];
    for (NSString * newUser in _mutableNewUsers) {
        NSLog(@"%@",newUser);
    }
    NSLog(@"%li",_mutableNewUsers.count);
    
    
    ViewController * vc1 = [[ViewController alloc]init];//老師用self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"
    vc1.regMutableArray = _mutableNewUsers; //不確定有沒有問題(RgVC的NSMutableArray傳給VC1的NSMutableArray去接.
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _mutableNewUsers = [[NSMutableArray alloc]init];
    
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
