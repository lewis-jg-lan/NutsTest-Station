//
//  Window.m
//  HowToWorks
//
//  Created by h on 17/3/29.
//  Copyright © 2017年 bill. All rights reserved.
//

#import "Window.h"


@implementation Window

-(instancetype)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag{
    self = [super initWithContentRect:contentRect styleMask:aStyle backing:bufferingType defer:flag];
    if (self) {
        //有阴影,!!!不知道为什么要改变窗口大小时才有反应!!!
        [self setHasShadow:YES];
        //设置窗口为不透明
        [self setOpaque:NO];
        //设置背景颜色为无色
        //[self setBackgroundColor:[NSColor clearColor]];
        //设置为点击背景可以移动窗口
        [self setMovableByWindowBackground:YES];
    }
    return self;
}

-(void)setContentView:(__kindof NSView *)contentView{
    
    contentView.wantsLayer = YES;
    contentView.layer.frame = contentView.frame;
    contentView.layer.cornerRadius = 5.0;
    contentView.layer.masksToBounds = YES;
    
    [super setContentView:contentView];
}

//不加上此代码window将无法响应
-(BOOL)canBecomeKeyWindow{
    return YES;
}
-(BOOL)canBecomeMainWindow{
    return YES;
}


@end
