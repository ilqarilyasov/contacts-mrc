//
//  ContactController.h
//  Contacts MRC
//
//  Created by Ilgar Ilyasov on 11/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Contact;

@interface ContactController : NSObject

@property (nonatomic, copy, readonly) NSArray<Contact *> *contacts;

- (void)createContact;
- (void)updateContact;
- (void)deleteContact;

@end

NS_ASSUME_NONNULL_END
