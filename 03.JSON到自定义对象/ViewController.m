//
//  ViewController.m
//  03.JSON到自定义对象
//
//  Created by 浅爱 on 16/3/2.
//  Copyright © 2016年 my. All rights reserved.
//

#import "ViewController.h"
#import "MYMessageModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [self getJSON];

}

- (void)getJSON {

    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1/demo.json"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        
        if (connectionError) {
            
            NSLog(@"connnect error");
            
            return ;
            
        }
        
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
        
        if (httpResponse.statusCode == 200 || httpResponse.statusCode == 304) {
            
            id result = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
       
            MYMessageModel *model = [MYMessageModel modelWithDictionary:result];
            
            NSLog(@"%@", model);
            
        } else {
        
            NSLog(@"error");
        
        }
        
    }];

}


@end






