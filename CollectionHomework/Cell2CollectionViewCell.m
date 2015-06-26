//
//  Cell2CollectionViewCell.m
//  CollectionHomework
//
//  Created by Aleksandra Borovytskaya on 6/23/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "Cell2CollectionViewCell.h"

#import "ModelItem.h"

@interface Cell2CollectionViewCell ()


@end

@implementation Cell2CollectionViewCell



- (void)awakeFromNib {
    // Initialization code
}

-(void)setUpWithModel:(ModelItem*)model {
    self.cellText.text=model.text;

}

@end
