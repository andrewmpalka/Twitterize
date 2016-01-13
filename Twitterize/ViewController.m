//
//  ViewController.m
//  Twitterize
//
//  Created by Andrew Palka on 1/13/16.
//  Copyright © 2016 Andrew Palka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)twitterize:(UIButton *)sender {
    NSString *textGrab = self.textView.text;
    NSMutableString *textNew = [NSMutableString new];
    
    for (int i = 0; i > textGrab.length; i++) {
        textNew = [textGrab characterAtIndex:i];
        if ([textNew isEqualToString:@"a"] ) {
            
        } else if ([textGrab characterAtIndex:i] == @"e")
        
        {
            <#statements#>
        }
    }
    
}

@end
