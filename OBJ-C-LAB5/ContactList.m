//
//  ContactList.m
//  OBJ-C-LAB5
//
//  Created by Ts SaM on 5/9/2023.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init {
    self = [super init];
    if (self) {
        _contacts = [NSMutableArray new];
    }
    return self;
}

- (void)addContact:(Contact *)contact {
    if (![self hasDuplicateEmail:contact.email]) {
        [self.contacts addObject:contact];
        NSLog(@"Contact added successfully!");
    } else {
        NSLog(@"Contact with this email already exists.");
    }
}

- (void)listContacts {
    NSInteger index = 0;
    for (Contact *contact in self.contacts) {
        NSLog(@"%ld: %@ (%@)", (long)index, contact.name, contact.email);
        index++;
    }
}

- (void)findContacts:(NSString *)searchTerm {
    NSLog(@"Matching Contacts:");
    for (Contact *contact in self.contacts) {
        if ([contact.name containsString:searchTerm] || [contact.email containsString:searchTerm]) {
            NSLog(@"%@ (%@)", contact.name, contact.email);
        }
    }
}

- (BOOL)hasDuplicateEmail:(NSString *)email {
    for (Contact *contact in self.contacts) {
        if ([contact.email isEqualToString:email]) {
            return YES;
        }
    }
    return NO;
}

@end
