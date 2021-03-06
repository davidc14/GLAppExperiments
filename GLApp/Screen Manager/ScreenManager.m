//
//  ScreenManager.m
//  GLApp
//
//  Created by David Clarke on 30/08/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ScreenManager.h"
#import "GameScreen.h"

@implementation ScreenManager

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        mScreenQueue = [[NSMutableArray alloc]init];
    }
    
    return self;
}

-(void)AddScreen:(GameScreen*) screen
{
    [mScreenQueue addObject:screen];
    [[mScreenQueue lastObject]LoadScreenManager:self];
    [[mScreenQueue lastObject]LoadContent];
}

-(void)RemoveScreen
{
    [[mScreenQueue lastObject]release];
    [mScreenQueue removeLastObject];
}

-(void)Update
{
    [[mScreenQueue lastObject]Update];
}

-(void)Draw
{
    [[mScreenQueue lastObject]Draw];
}

-(void)dealloc
{
    [mScreenQueue release];
    [super dealloc];
}

-(void)touchesBeganWithEvent:(NSSet *)touches withEvent:(UIEvent *)event: (UIView*)view
{
    [[mScreenQueue lastObject]touchesBeganWithEvent:touches withEvent:event: view];
}

-(void)touchesMovedWithEvent:(NSSet *)touches withEvent:(UIEvent *)event: (UIView*)view
{
    [[mScreenQueue lastObject]touchesMovedWithEvent:touches withEvent:event: view];
}

@end
