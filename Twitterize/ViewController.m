//
//  ViewController.m
//  Twitterize
//
//  Created by Andrew Palka on 1/13/16.
//  Copyright © 2016 Andrew Palka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *characterCount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSUInteger length;
    length = [self.textView.text length];
    
    self.characterCount.text = [NSString stringWithFormat:@"Character Count %lu", (unsigned long)length];
}
- (BOOL)isAcceptableTextLength:(NSUInteger)length {
    return length <= 140;
}
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    return [self isAcceptableTextLength:textView.text.length + text.length - range.length];
}
- (void)textViewDidChange:(UITextView *)textView
{
    NSUInteger length;
    length = [textView.text length];
    
    self.characterCount.text = [NSString stringWithFormat:@"Character Count %lu", (unsigned long)length];
}
- (IBAction)twitterize:(UIButton *)sender {
    NSString *textGrab = self.textView.text;
    NSMutableString *textNew = [NSMutableString new];
    
    for (int i = 0; i < textGrab.length -1; i++) {
        NSString *character = [NSString stringWithFormat:@"%c",[textGrab characterAtIndex:i]];
        if ([character.lowercaseString isEqualToString:@"a"]) {
            continue;
        
        } else if ([character.lowercaseString isEqualToString:@"e"]) {
            continue;
        }
        else if ([character.lowercaseString isEqualToString:@"i"]) {
            continue;
        }
        else if ([character.lowercaseString isEqualToString:@"o"]) {
            continue;
        }
        else if ([character.lowercaseString isEqualToString:@"u"]) {
            continue;
        }
        else {
            [textNew appendFormat:@"%@", character];
        }
    
}
    self.textView.text = textNew;
    
}
- (IBAction)onHashtagButtonTapped:(UIButton *)sender {
    NSString *textGrab = self.textView.text;
    
}

@end
