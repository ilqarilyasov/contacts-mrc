//
//  Contact.m
//  Contacts MRC
//
//  Created by Ilgar Ilyasov on 11/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone
{
    self = [super init];
    if (self) {
        _contactName = [name copy];
        _contactEmail = [email copy];
        _contactPhone = [phone copy];
    }
    return self;
}

@end
