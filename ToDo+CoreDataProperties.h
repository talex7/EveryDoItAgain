//
//  ToDo+CoreDataProperties.h
//  EveryDoItAgain
//
//  Created by Thomas Alexanian on 2016-11-23.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "ToDo+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ToDo (CoreDataProperties)

+ (NSFetchRequest<ToDo *> *)fetchRequest;

@property (nonatomic) int32_t priority;
@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSString *detailedDesc;
@property (nullable, nonatomic, copy) NSDate *timestamp;

@end

NS_ASSUME_NONNULL_END
