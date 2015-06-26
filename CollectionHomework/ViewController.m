//
//  ViewController.m
//  CollectionHomework
//
//  Created by Aleksandra Borovytskaya on 6/23/15.
//  Copyright (c) 2015 Aleksandra Borovytskaya. All rights reserved.
//

#import "ViewController.h"
#import "ModelItem.h"
#import "Cell1CollectionViewCell.h"
#import "Cell2CollectionViewCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *selectButtons;
@property(nonatomic, strong) NSMutableArray *data;
@end

@implementation ViewController


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)
        collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    if ( self.selectButtons.selectedSegmentIndex == 0)
    {
        Cell1CollectionViewCell *cell1 = [collectionView dequeueReusableCellWithReuseIdentifier:
                @"identifier"                                                      forIndexPath:indexPath];

        ModelItem *item = self.data[indexPath.item];

        [cell1 setUpWithModel:item];

        return cell1;

    }
    else {
        Cell2CollectionViewCell *cell2 = [collectionView dequeueReusableCellWithReuseIdentifier:
                @"identifier2"                                                      forIndexPath:indexPath];


        ModelItem *item2 = self.data[indexPath.item];

        [cell2 setUpWithModel:item2];

        return cell2;
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];


    [self prepareData];

    self.collectionView.delegate=self;
    self.collectionView.dataSource=self;

    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(155, 155);
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;



    self.collectionView.collectionViewLayout = layout;
    [self.collectionView registerNib:[UINib nibWithNibName:@"Cell1CollectionViewCell" bundle:nil]
          forCellWithReuseIdentifier:@"identifier"];

    [self.collectionView registerNib:[UINib nibWithNibName:@"Cell2CollectionViewCell" bundle:nil]
          forCellWithReuseIdentifier:@"identifier2"];

}

- (void)prepareData
{
    NSMutableArray *array = [[NSMutableArray alloc ]init ];
    [array addObject: [[ModelItem alloc]initWithImageName:@"1.jpg" text: @"Котики1"]];
    [array addObject: [[ModelItem alloc]initWithImageName:@"2.jpg" text: @"Котики2"]];
    [array addObject: [[ModelItem alloc]initWithImageName:@"3.jpg" text: @"Котики3"]];
    [array addObject: [[ModelItem alloc]initWithImageName:@"4.jpg" text: @"Котики4"]];
    [array addObject: [[ModelItem alloc]initWithImageName:@"5.jpg" text: @"Котики5"]];
    [array addObject: [[ModelItem alloc]initWithImageName:@"6.jpg" text: @"Котики6"]];
    [array addObject: [[ModelItem alloc]initWithImageName:@"7.jpg" text: @"Котики7"]];
    [array addObject: [[ModelItem alloc]initWithImageName:@"8.jpg" text: @"Котики8"]];
    [array addObject: [[ModelItem alloc]initWithImageName:@"9.jpg" text: @"Котики9"]];
    [array addObject: [[ModelItem alloc]initWithImageName:@"10.jpg" text: @"Котики10"]];

    self.data=array;
}


-(NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

- (IBAction)tapOnSegmCont:(id)sender {

    [self.collectionView reloadData];
    
}



@end
