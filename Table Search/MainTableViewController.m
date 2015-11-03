//
//  MainTableViewController.m
//  Table Search
//
//  Created by Jay Versluis on 03/11/2015.
//  Copyright © 2015 Pinkstone Pictures LLC. All rights reserved.
//

#import "MainTableViewController.h"

@interface MainTableViewController ()
@property (strong, nonatomic) NSMutableArray *data;
@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)data {
    
    if (!_data) {
        _data = [[NSMutableArray alloc]init];
        
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
        formatter.numberStyle = NSNumberFormatterSpellOutStyle;
        
        for (int i = 0; i < 30; i++) {
            NSNumber *thisNumber = [NSNumber numberWithInt:i];
            NSString *spelledOutNumber = [formatter stringFromNumber:thisNumber];
            [_data addObject:spelledOutNumber];
        }
    }
    return _data;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [self.data objectAtIndex:indexPath.row];
    
    return cell;
}



@end
