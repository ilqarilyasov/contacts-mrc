//
//  ContactsTableViewController.m
//  Contacts MRC
//
//  Created by Ilgar Ilyasov on 11/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "ContactController.h"
#import "Contact.h"
#import "ContactDetailViewController.h"

@interface ContactsTableViewController ()

@property (nonatomic, strong) ContactController *contactController;

@end

@implementation ContactsTableViewController

- (void)dealloc
{
    [_contactController release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _contactController = [[ContactController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    Contact *contact = self.contactController.contacts[indexPath.row];
    
    cell.textLabel.text = contact.contactName;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Contact *contact = self.contactController.contacts[indexPath.row];
        [self.contactController deleteContact:contact];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [tableView reloadData];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddSegue"]) {
        
        ContactDetailViewController *destVC = segue.destinationViewController;
        destVC.contactController = self.contactController;
        
    } else if ([segue.identifier isEqualToString:@"CellSegue"]) {
        
        ContactDetailViewController *destVC = segue.destinationViewController;
        destVC.contactController = self.contactController;
        
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        Contact *contact = self.contactController.contacts[indexPath.row];
        destVC.contact = contact;
        
    }
}

@end
