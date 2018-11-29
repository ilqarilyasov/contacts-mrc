//
//  Contact.h
//  Contacts MRC
//
//  Created by Ilgar Ilyasov on 11/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic, copy, readwrite) NSString *contactName;
@property (nonatomic, copy, readwrite) NSString *contactEmail;
@property (nonatomic, copy, readwrite) NSString *contactPhone;

- (instancetype)initWithName:(NSString*)name email:(NSString*)email phone:(NSString*)phone;

@end

NS_ASSUME_NONNULL_END
