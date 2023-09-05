//
//  Contact.h
//  OBJ-C-LAB5
//
//  Created by Ts SaM on 5/9/2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property NSString *name;
@property NSString *email;
@property NSMutableArray *phoneNumbers;

- (instancetype)initWithName:(NSString *)name email:(NSString *)email;
- (void)addPhoneNumber:(NSString *)phoneNumber withLabel:(NSString *)label;
- (void)displayContactDetails;

@end

NS_ASSUME_NONNULL_END
