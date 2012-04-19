//
//  UIView+animations.m
//  iProperties
//
//  Created by www.techpaa.com on 16/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIView+animations.h"
#import <objc/runtime.h>

static char ISANIMATED_KEY;
static char ANIMATION_IDENTIFER;

@implementation UIView (animations)
@dynamic animationIdentifer;
@dynamic isAnimated;

-(void)setAnimationIdentifer:(NSString *)newAnimationIdentifer{
    objc_setAssociatedObject(self, &ANIMATION_IDENTIFER, newAnimationIdentifer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSString*)animationIdentifer{
 return objc_getAssociatedObject(self, &ANIMATION_IDENTIFER);
}

-(void)setIsAnimated:(BOOL)animated{
    objc_setAssociatedObject(self, &ISANIMATED_KEY, [NSNumber numberWithBool:animated], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(BOOL)isAnimated{
    return [objc_getAssociatedObject(self, &ISANIMATED_KEY) boolValue];
}

@end
