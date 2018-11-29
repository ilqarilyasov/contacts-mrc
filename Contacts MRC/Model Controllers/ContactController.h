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

- (void)createContactWithName:(NSString*)name email:(NSString*)email phone:(NSString*)phone;
- (void)updateContact:(Contact*)contact name:(NSString*)name email:(NSString*)email phone:(NSString*)phone;
- (void)deleteContact:(Contact*)contact;

@end

NS_ASSUME_NONNULL_END
