//
//  WMModalViewController.m
//  iWi
//
//  Created by Rafaël Warnault on 22/11/11.
//  Copyright (c) 2011 Read-Write. All rights reserved.
//

#import "WMModalTableViewController.h"


@implementation WMModalTableViewController

@synthesize delegate = _delegate;

- (void)dealloc {
    [_delegate release];
    [super dealloc];
}

- (void)viewDidUnload {
    [self setDelegate:nil];
    [super viewDidUnload];
}

- (IBAction)cancel:(id)sender {
    [self.delegate modalViewControllerDidCancel:self];
}

- (IBAction)save:(id)sender {
    [self.delegate modalViewController:self didSave:nil];
}

@end
