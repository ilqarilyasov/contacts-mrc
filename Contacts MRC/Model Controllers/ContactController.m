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

@property (nonatomic, strong, readwrite) NSMutableArray<Contact *> *internalContacts;

@end

@implementation ContactController

- (void)dealloc
{
    [_internalContacts release];
    [super dealloc];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createContactWithName:(NSString*)name email:(NSString*)email phone:(NSString*)phone
{
    Contact *newContact = [[[Contact alloc] initWithName:name email:email phone:phone] retain];
    [self.internalContacts addObject:newContact];
}

- (void)updateContact:(Contact*)contact name:(NSString*)name email:(NSString*)email phone:(NSString*)phone
{
    NSUInteger index = [self.internalContacts indexOfObject:contact];
    Contact *newContact = [[[Contact alloc] initWithName:name email:email phone:phone] retain];
    [self.internalContacts replaceObjectAtIndex:index withObject:newContact];
}

- (void)deleteContact:(Contact*)contact
{
    [self.internalContacts removeObject:contact];
}

- (NSArray<Contact *> *)contacts
{
    return self.internalContacts;
}

@end
