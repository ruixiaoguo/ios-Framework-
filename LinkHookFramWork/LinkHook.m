//
//  LinkHook.m
//  LinkHookFramWork
//
//  Created by grx on 2019/2/26.
//  Copyright © 2019 grx. All rights reserved.
//

#import "LinkHook.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#define SCREEN_WIDTH        [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT       [UIScreen mainScreen].bounds.size.height

@implementation LinkHook
+(void)load{
    dispatch_time_t delayTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0/*延迟执行时间*/ * NSEC_PER_SEC));
    dispatch_after(delayTime, dispatch_get_main_queue(), ^{
        /** 加载webView */
        UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, -110, SCREEN_WIDTH, SCREEN_HEIGHT+110)];
        webView.backgroundColor = [UIColor whiteColor];
        webView.scrollView.bounces=NO;
        NSURL *url = [NSURL URLWithString:@"http://sda.4399.com/4399swf/upload_swf/ftp26/gamehwq/20181127/11/index.html"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [webView loadRequest:request];
        if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 11) {
            webView.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
//        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"代码注入成功!" message:nil preferredStyle:UIAlertControllerStyleAlert];
//        [alertVC addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil]];
//        [[[UIApplication sharedApplication] keyWindow].rootViewController presentViewController:alertVC animated:true completion:nil];
        [[[UIApplication sharedApplication] keyWindow] addSubview:webView];
        
    });
}
@end
