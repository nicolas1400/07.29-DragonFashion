//
//  Dragon.h
//  DragoFashion
//
//  Created by Nicolas Semenas on 29/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject

@property NSString *name;
@property NSString *signatureClothingItem;

- (instancetype) initWithName: (NSString *)name clothingItem:(NSString *) signatureClothingItem;


@end


