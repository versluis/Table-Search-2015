//
//  ShowResultsViewController.m
//  Table Search
//
//  Created by Jay Versluis on 11/05/2017.
//  Copyright © 2017 Pinkstone Pictures LLC. All rights reserved.
//

#import "ShowResultsViewController.h"

@interface ShowResultsViewController ()

@end

@implementation ShowResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // load value into the label
    self.resultsLabel.text = self.theResult;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismiss:(id)sender {
    
    // dismiss this view controller
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
