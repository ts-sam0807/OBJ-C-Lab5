//
//  ContactList.h
//  OBJ-C-LAB5
//
//  Created by Ts SaM on 5/9/2023.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property NSMutableArray<Contact *> *contacts;

- (instancetype)init;
- (void)addContact:(Contact *)contact;
- (void)listContacts;
- (void)findContacts:(NSString *)searchTerm;
- (BOOL)hasDuplicateEmail:(NSString *)email;

@end

NS_ASSUME_NONNULL_END
