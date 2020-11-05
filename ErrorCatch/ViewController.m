//
//  ViewController.m
//  ErrorCatch
//
//  Created by ShiBiao on 2020/11/5.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)mouseDown:(NSEvent *)event {
    [super mouseDown:event];
//    @throw [NSException exceptionWithName:NSRangeException reason:@"test" userInfo:@{@"dsf":@"123123"}];
    id key = nil;
            NSDictionary *dic = @{key: @"dadf"};
            NSLog(@"--》》》 %@",dic);
    
//    id key = nil;
//    @try {
//        NSDictionary *dic = @{key: @"dadf"};
//        NSLog(@"--》》》 %@",dic);
//    } @catch (NSException *exception) {
//        NSLog(@"--- %@",exception);
//        if (exception) {
//            key = @"haha";
//        }
//    } @finally {
//        NSLog(@"==== %@",key);
//    }
}

@end
