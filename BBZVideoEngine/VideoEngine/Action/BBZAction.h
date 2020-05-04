//
//  BBZAction.h
//  BBZVideoEngine
//
//  Created by Hbo on 2020/4/29.
//  Copyright © 2020 BBZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBZNode.h"

extern const int BBZVideoTimeScale;
extern const int BBZVideoDurationScale;


@interface BBZAction : NSObject
@property (nonatomic, assign) NSUInteger startTime;
@property (nonatomic, assign) NSUInteger duration;
@property (nonatomic, assign) NSInteger repeatCount;
@property (nonatomic, assign) NSInteger order;

@property (nonatomic, strong, readonly) BBZNode *node;

- (instancetype)initWithNode:(BBZNode *)node;

- (void)updateWithTime:(NSUInteger)time;
- (void)newFrameAtTime:(NSUInteger)time;



- (void)lock;
- (void)unlock;
- (void)disableReferenceCounting;
- (void)enableReferenceCounting;
- (void)destroySomething;

- (NSUInteger)endTime;

@end


