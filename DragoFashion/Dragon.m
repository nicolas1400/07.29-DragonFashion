//
//  Dragon.m
//  DragoFashion
//
//  Created by Nicolas Semenas on 29/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

- (instancetype) initWithName: (NSString *)name clothingItem:(NSString *) signatureClothingItem;
{
    self = [super init];

    self.name = name;
    self.signatureClothingItem = signatureClothingItem;
    return self;
    
}


@end
