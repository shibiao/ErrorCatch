//
//  main.m
//  ErrorCatch
//
//  Created by ShiBiao on 2020/11/5.
//

#import <Cocoa/Cocoa.h>

#import <ExceptionHandling/NSExceptionHandler.h>



@interface ExceptionDelegate : NSObject

@end

static ExceptionDelegate *exceptionDelegate = nil;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        exceptionDelegate = [[ExceptionDelegate alloc] init];
        NSExceptionHandler *handler = [NSExceptionHandler defaultExceptionHandler];
        NSUInteger mask = NSLogAndHandleEveryExceptionMask;
        [handler setExceptionHandlingMask:mask];
        handler.delegate = exceptionDelegate;
    }
    return NSApplicationMain(argc, argv);
}



@implementation ExceptionDelegate

- (BOOL)exceptionHandler:(NSExceptionHandler *)sender shouldLogException:(NSException *)exception mask:(NSUInteger)aMask {
    NSLog(@"----1-- %@",exception);
    return  YES;
}
- (BOOL)exceptionHandler:(NSExceptionHandler *)sender shouldHandleException:(NSException *)exception mask:(NSUInteger)aMask {
    NSLog(@"----2-- %@",exception);
    return NO;
}


@end
