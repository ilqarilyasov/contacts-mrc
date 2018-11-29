//
//  ContactDetailViewController.m
//  Contacts MRC
//
//  Created by Ilgar Ilyasov on 11/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "ContactDetailViewController.h"
#import "ContactController.h"
#import "Contact.h"

@interface ContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

@end

@implementation ContactDetailViewController

- (void)dealloc
{
    [_contactController release];
    [_contact release];
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (IBAction)saveTapped:(id)sender
{
    if (self.contact) {
        [self.contactController updateContact:self.contact name:self.nameTextField.text email:self.emailTextField.text phone:self.phoneTextField.text];
    } else {
        [self.contactController createContactWithName:self.nameTextField.text email:self.emailTextField.text phone:self.phoneTextField.text];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)updateViews
{
    if (self.contact) {
        self.title = self.contact.contactName;
        self.nameTextField.text = self.contact.contactName;
        self.emailTextField.text = self.contact.contactEmail;
        self.phoneTextField.text = self.contact.contactPhone;
    } else {
        self.title = @"Create New Contact";
    }
}

// MOST IMPORTANT!!!
// You should first release object with old value and then retain object with new value

- (void)setContact:(Contact *)contact
{
    if (_contact == contact) { return ; } // IMPORTANT!!!
    
    [_contact release]; // IMPORTANT!!!
    _contact = contact; // IMPORTANT!!!
    [_contact retain]; // IMPORTANT!!!
    
    [self updateViews];
}

@end
