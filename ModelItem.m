//
//  ModelItem.m
//  CollectionHomework
//
//  Created by Aleksandra Borovytskaya on 6/23/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "ModelItem.h"

@implementation ModelItem {
}

- (instancetype)initWithImageName:(NSString *)imageName text:(NSString *)text {
    self = [super init];
    if (self) {
        self.imageName = imageName;
        self.text = text;

    }
    return self;
}

@end
