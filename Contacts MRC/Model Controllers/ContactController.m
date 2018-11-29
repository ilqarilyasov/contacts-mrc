//
//  ContactController.m
//  Contacts MRC
//
//  Created by Ilgar Ilyasov on 11/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "ContactController.h"
#import "Contact.h"

@interface ContactController ()

@property (nonatomic, copy, readwrite) NSArray<Contact *> *internalContacts;

@end

@implementation ContactController

- (void)createContact
{
    
}

- (void)updateContact
{
    
}

- (void)deleteContact
{
    
}

- (NSArray<Contact *> *)contacts
{
    return self.internalContacts;
}

@end
