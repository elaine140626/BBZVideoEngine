//
//  BBZFilterNode.m
//  BBZVideoEngine
//
//  Created by bob on 2020/4/22.
//  Copyright © 2020年 BBZ. All rights reserved.
//

#import "BBZFilterNode.h"
#import "NSDictionary+YYAdd.h"

@implementation BBZFilterNode
-(instancetype)initWithDictionary:(NSDictionary *)dic {
    if (self = [super init]) {
        self.timestamp = [dic floatValueForKey:@"timestamp" default:0.0];
        self.duration = [dic floatValueForKey:@"duration" default:0.0];
        self.index = [dic intValueForKey:@"" default:0];
        self.repeat = [dic intValueForKey:@"duration" default:0];
        id Obj = [dic objectForKey:@"action"];
        NSMutableArray *array = [NSMutableArray array];
        if ([Obj isKindOfClass:[NSDictionary class]]) {
            BBZNode *node = [[BBZNode alloc] initWithDictionary:Obj];
            [array addObject:node];
        } else if ([Obj isKindOfClass:[NSArray class]]) {
            for (NSDictionary *subDic in Obj) {
                BBZNode *node = [[BBZNode alloc] initWithDictionary:subDic];
                [array addObject:node];
            }
        }
        self.actions = array;
    }
    return self;
}

@end