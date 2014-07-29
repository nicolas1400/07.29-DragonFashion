//
//  ViewController.m
//  DragoFashion
//
//  Created by Nicolas Semenas on 29/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import "RootViewController.h"
#import "Dragon.h"

@interface RootViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    Dragon *smaug = [[Dragon alloc]initWithName:@"Smaug" clothingItem:@"High Heels"];
    smaug.name = @"Smaug";
    smaug.signatureClothingItem = @"High Heels";
    
    Dragon *puff = [[Dragon alloc]initWithName:@"Puff The Magic Dragon" clothingItem:@"Scarf"];
    puff.name = @"Puff The Magic Dragon";

    Dragon *juan = [[Dragon alloc]initWithName:@"Juancito" clothingItem:@"Ring"];
    juan.signatureClothingItem = @"Ring";

    Dragon *norbert = [[Dragon alloc]initWithName:@"Norbert The Insane Dragon" clothingItem:@"Cigar"];
    norbert.signatureClothingItem = @"Cigar";

    
    
    self.dragons = [NSMutableArray arrayWithObjects:smaug, puff, juan, norbert, nil];
    
    for (Dragon *dragon in self.dragons){
        NSLog(@"%@", dragon.name);
    
    }
    
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    Dragon * dragon = [self.dragons objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID"];
    cell.textLabel.text = dragon.name;
    cell.detailTextLabel.text = dragon.signatureClothingItem;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dragons.count;
}
@end
