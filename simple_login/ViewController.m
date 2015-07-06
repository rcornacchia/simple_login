//
//  ViewController.m
//  simple_login
//
//  Created by Rob Cornacchia on 7/6/15.
//  Copyright (c) 2015 Blackbird. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *loginEmail;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    
//    
//    ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:url];
//    [request setPostValue:@"Ben" forKey:@"first_name"];
//    [request setPostValue:@"Copsey" forKey:@"last_name"];
//    [request setFile:@"/Users/ben/Desktop/ben.jpg" forKey:@"photo"];
//    
    
    NSString *rawStr = [NSString stringWithFormat:@"email=%@",_loginEmail.text];
    NSData *data = [rawStr dataUsingEncoding:NSUTF8StringEncoding];
    
    NSURL *url = [NSURL URLWithString:@"http://myurl.com/script.php"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:data];
    
    NSURLResponse *response;
    NSError *err;
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&err];
    NSLog(@"responseData: %@", responseData);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
