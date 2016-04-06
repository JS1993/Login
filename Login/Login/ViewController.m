//
//  ViewController.m
//  Login
//
//  Created by  江苏 on 16/4/6.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *userNameTF;
@property (strong, nonatomic) IBOutlet UITextField *keyTF;
@property (strong, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.userNameTF becomeFirstResponder];
}
- (IBAction)logIn:(UIButton *)sender {
    NSLog(@"%@ %@",self.userNameTF.text,self.keyTF.text);
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    //返回为NO时，就不向文本框输入内容
    return (range.location<6);
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if (textField==self.userNameTF) {
        [self.keyTF becomeFirstResponder];
    }else if(textField==self.keyTF){
        [self.keyTF resignFirstResponder];
        [self logIn:self.loginButton];
    }
    return YES;
}
@end
