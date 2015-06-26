//
//  Cell1CollectionViewCell.m
//  CollectionHomework
//
//  Created by Aleksandra Borovytskaya on 6/23/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "Cell1CollectionViewCell.h"
#import "ModelItem.h"

@interface Cell1CollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *cellImage;

@end


@implementation Cell1CollectionViewCell




- (void)awakeFromNib {
    // Initialization code
}

-(void)setUpWithModel:(ModelItem*)model {
    self.cellImage.image=[UIImage imageNamed:model.imageName];

}

@end
