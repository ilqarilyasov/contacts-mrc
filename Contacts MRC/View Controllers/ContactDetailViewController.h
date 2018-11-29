//
//  ContactDetailViewController.h
//  Contacts MRC
//
//  Created by Ilgar Ilyasov on 11/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ContactController;
@class Contact;

@interface ContactDetailViewController : UIViewController

@property (nonatomic, strong, nullable, readwrite) ContactController *contactController;
@property (nonatomic, strong, nullable, readwrite) Contact *contact;

@end

NS_ASSUME_NONNULL_END
