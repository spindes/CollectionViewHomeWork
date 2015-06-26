//
//  ModelItem.h
//  CollectionHomework
//
//  Created by Aleksandra Borovytskaya on 6/23/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ModelItem : UICollectionViewCell

@property(nonatomic, copy) NSString *imageName;
@property(nonatomic, copy) NSString *text;



- (instancetype)initWithImageName:(NSString *)imageName text:(NSString *)text;
@end
