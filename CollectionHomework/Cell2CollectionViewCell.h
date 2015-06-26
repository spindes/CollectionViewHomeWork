//
//  Cell2CollectionViewCell.h
//  CollectionHomework
//
//  Created by Aleksandra Borovytskaya on 6/23/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cell2CollectionViewCell.h"
#import "ModelItem.h"



@class ModelItem;

@interface Cell2CollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UITextView *cellText;

- (void)setUpWithModel:(ModelItem *)model;
@end




