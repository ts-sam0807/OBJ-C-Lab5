//
//  Contact.m
//  OBJ-C-LAB5
//
//  Created by Ts SaM on 5/9/2023.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phoneNumbers = [NSMutableArray new];
    }
    return self;
}

- (void)addPhoneNumber:(NSString *)phoneNumber withLabel:(NSString *)label {
    NSDictionary *phoneDict = @{@"label": label, @"number": phoneNumber};
    [self.phoneNumbers addObject:phoneDict];
}

- (void)displayContactDetails {
    NSLog(@"Name: %@", self.name);
    NSLog(@"Email: %@", self.email);
    for (NSDictionary *phoneDict in self.phoneNumbers) {
        NSLog(@"%@: %@", phoneDict[@"label"], phoneDict[@"number"]);
    }
}

@end
