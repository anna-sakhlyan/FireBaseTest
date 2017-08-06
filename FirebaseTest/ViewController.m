//
//  ViewController.m
//  FirebaseTest
//
//  Created by AnnaSakhlyan on 8/7/17.
//  Copyright © 2017 AnnaSakhlyan. All rights reserved.
//

#import "ViewController.h"
@import Firebase;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *token;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)regenerateToken:(id)sender {
    [[FIRInstanceID instanceID] deleteIDWithHandler:^(NSError * _Nullable error) {
        NSString *token = [FIRMessaging messaging].FCMToken;
    }];
}
- (IBAction)getToken:(id)sender {
    self.token.text = [FIRMessaging messaging].FCMToken;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
