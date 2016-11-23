//
//  DetailViewController.h
//  EveryDoItAgain
//
//  Created by Thomas Alexanian on 2016-11-23.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EveryDoItAgain+CoreDataModel.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Event *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

